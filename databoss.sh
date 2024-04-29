# Start databases
docker-compose up --build -d

sleep 5

# Send mysql command
docker exec -i mysql mysql -u root -pdataboss mysql < state.sql

# Send mssql server command
docker exec -it mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P D@taB0ss -Q "$(<state.sql)"

# Send sqlite command
docker exec -it sqlite3 sqlite3 tmp/databoss.db "$(<state.sql)" ".exit"

# Send postgres command
docker exec -it postgres psql -U postgres -c "$(<state.sql)"

# Stop databases
docker-compose down