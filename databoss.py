import atexit
import re
import subprocess
from dataclasses import dataclass, field
import os


@dataclass
class CommandOutput:
    status: int = -1
    out: str = ""
    err: str = "Not implemented!"
    engine: str = ""
    cmd: str = ""
    sqlOut: list[list[str]] = field(default_factory=list)
    errRow: int = 0
    errCol: int = 0
    errVal: str = ""
    errType: str = ""

    @classmethod
    def from_subprocess(cls, result: subprocess.CompletedProcess[str], engine="", cmd=""):
        return cls(result.returncode, result.stdout, result.stderr, engine, cmd)

    def __repr__(self) -> str:
        return f"ENGINE: {self.engine}\tSTATUS: {self.status}\tOUT: {self.out}\tERR: {self.err}\n"

    def __eq__(self, value: object) -> bool:
        if type(value) != CommandOutput:
            return False
        if self.sqlOut == [] and value.sqlOut == []:
            return True
        if len(self.sqlOut) != len(value.sqlOut):
            self.errType = "row"
            return False
        for row in range(len(self.sqlOut)):
            if len(self.sqlOut[row]) != len(value.sqlOut[row]):
                return False
            for i in range(len(self.sqlOut[row])):
                if self.sqlOut[row][i] != value.sqlOut[row][i]:
                    self.errRow = row
                    self.errCol = i
                    self.errVal = self.sqlOut[row][i]
                    value.errRow = row
                    value.errCol = i
                    value.errVal = value.sqlOut[row][i]
                    return False
        return True


class Driver:
    @classmethod
    def runSelect(self, sql: str) -> CommandOutput:
        return None


class SQLiteDriver(Driver):
    @classmethod
    def runSelect(self, sql):
        result = subprocess.run(
            f'docker exec -it sqlite3 sqlite3 tmp/databoss.db "{sql}" ".exit"', shell=True, text=True, capture_output=True)
        commandOutput = CommandOutput.from_subprocess(result, "SQLite", sql)
        rows = commandOutput.out.split("\n")[:-1]
        rowAndCols = [row.split("|") for row in rows]
        rowAndCols = sorted(rowAndCols, key=lambda x: "".join(x))
        commandOutput.sqlOut = rowAndCols
        return commandOutput


class MSSqlDriver(Driver):
    @classmethod
    def runSelect(self, sql):
        result = subprocess.run(
            f'docker exec -it mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P D@taB0ss -W -s "|" -Q "{sql}"', shell=True, text=True, capture_output=True)
        commandOutput = CommandOutput.from_subprocess(result, "MSSql", sql)
        rows = commandOutput.out.split("\n")[2:-3]
        rowAndCols = [row.split("|") for row in rows]
        rowAndCols = sorted(rowAndCols, key=lambda x: "".join(x))
        commandOutput.sqlOut = rowAndCols
        return commandOutput


class MySQLDriver(Driver):
    @classmethod
    def runSelect(self, sql):
        result = subprocess.run(
            f'docker exec -i mysql mysql -u root -pdataboss mysql -e "{sql}"', shell=True, text=True, capture_output=True)
        commandOutput = CommandOutput.from_subprocess(result, "MySQL", sql)
        rows = commandOutput.out.split("\n")[1:-1]
        rowAndCols = [row.split("\t") for row in rows]
        rowAndCols = sorted(rowAndCols, key=lambda x: "".join(x))
        commandOutput.sqlOut = rowAndCols
        return commandOutput


class PostgresDriver(Driver):
    @classmethod
    def runSelect(self, sql):
        result = subprocess.run(
            f'docker exec -i postgres psql -t -A -U postgres -c "{sql}"', shell=True, text=True, capture_output=True)
        commandOutput = CommandOutput.from_subprocess(result, "Postgres", sql)
        rows = commandOutput.out.split("\n")[:-1]
        rowAndCols = [row.split("|") for row in rows]
        rowAndCols = sorted(rowAndCols, key=lambda x: "".join(x))
        commandOutput.sqlOut = rowAndCols
        return commandOutput


def main():

    with open("queries.sql", "r") as data:
        queries = []
        lines = data.readlines()
        for i in range(len(lines)):
            if lines[i] == "----\n":
                queries.append(lines[i-1].strip() + ";")
    drivers: list[Driver] = [SQLiteDriver,
                             MSSqlDriver, MySQLDriver, PostgresDriver]

    for i, q in enumerate(queries):
        if i % 20 == 0:
            print(f"{i}/{len(queries)}")
        result = [driver.runSelect(q)
                  for driver in drivers]
        for i in range(len(result) - 1):
            if result[i] != result[i+1]:
                if (result[i].errType == "row"):
                    print(
                        f"{result[i].engine} differs from {result[i+1].engine}: mismatch in row numbers (Got {len(result[i].sqlOut)}, expected {len(result[i+1].sqlOut)}) for command {result[i].cmd}")
                else:
                    print(
                        f"{result[i].engine} differs from {result[i+1].engine} at {result[i].errRow}, {result[i].errCol} (Got {result[i].errVal}, expected {result[i+1].errVal}) for command {result[i].cmd}")


if __name__ == "__main__":
    main()
