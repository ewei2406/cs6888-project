import atexit
import subprocess
from dataclasses import dataclass
import os

@dataclass
class CommandOutput:
  status: int=-1
  out: str=""
  err: str="Not implemented!"
  
  @classmethod
  def from_subprocess(cls, result: subprocess.CompletedProcess[str]):
    return cls(result.returncode, result.stdout, result.stderr)
  
  def __repr__(self) -> str:
    return f"STATUS: {self.status}\tOUT: {self.out}\tERR: {self.err}\n"


class Driver:
  def __init__(self) -> None:
    return
  def exit(self) -> None:
    return None;
  def run(self, sql: str):
    return None


class SQLiteDriver(Driver):
  def run(self, sql: str) -> CommandOutput:
    result = subprocess.run(['sqlite3/sqlite3', 'tmp/db.sqlite', sql], text=True, capture_output=True)
    return CommandOutput.from_subprocess(result)


class PostgresDriver(Driver):
  def __init__(self) -> None:
    super().__init__()
    # Create the postgres stuff
    if len(os.listdir('tmp/postgres')) == 0:
      subprocess.run(['initdb', 'tmp/postgres'])
    subprocess.run(["pg_ctl", "-D", "tmp/postgres", "start"], check=True, capture_output=False)
    
  def exit(self) -> None:
    subprocess.run(["pg_ctl", "-D", "tmp/postgres", "stop"], check=True)

  def run(self, sql: str) -> CommandOutput:
    result = subprocess.run(['psql', '-d', 'my_db', '-c', sql], check=True, capture_output=True)
    return CommandOutput.from_subprocess(result)


q1 = """
CREATE TABLE IF NOT EXISTS my_table (my_column TEXT)
"""

q2 = """
INSERT INTO my_table (my_column)
VALUES ("Joe");
"""

q3 = """
SELECT * FROM my_table2
"""

def main():
  pg = PostgresDriver()
  r1 = pg.run(q1)
  r2 = pg.run(q2)
  r3 = pg.run(q3)
  print(r1, r2, r3)
  
  # r1 = SQLiteCommand(q1).run()
  # r2 = SQLiteCommand(q2).run()
  # r3 = SQLiteCommand(q3).run()
  # print(r1, r2, r3)
  
  pg.exit()

if __name__ == "__main__":
  main()