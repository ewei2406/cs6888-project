docker pull mcr.microsoft.com/mssql/server
docker pull container-registry.oracle.com/database/free:latest


docker run -d --name oracle-db -p 1000:1521 -e ORACLE_SID=databoss -e ORACLE_PDF=databoss -e ORACLE_PWD=databoss container-registry.oracle.com/database/free