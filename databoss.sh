#!/bin/bash

set +e
FILE=state2.sql
# Start databases
# docker-compose up --build -d

# Send mysql command
docker exec -i mysql mysql -u root -pdataboss mysql -e "$(<$FILE)"

# Send mssql server command
docker exec -it mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P D@taB0ss -Q "$(<$FILE)"

# Send sqlite command
docker exec -it sqlite3 sqlite3 tmp/databoss.db "$(<$FILE)" ".exit"

# Send postgres command
docker exec -it postgres psql -U postgres -c "$(<$FILE)"

echo "FINISHED!"
# Stop databases
# docker-compose down