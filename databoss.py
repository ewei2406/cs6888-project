import subprocess


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
  args = ["./sqlite3/sqlite3", "db.sqlite", q1]
  return_code = subprocess.call(args)
  print(return_code)
  args = ["./sqlite3/sqlite3", "db.sqlite", q2]
  subprocess.call(args)
  args = ["./sqlite3/sqlite3", "db.sqlite", q3]
  return_code = subprocess.call(args)
  print(return_code)

if __name__ == "__main__":
  main()