FROM mysql:latest

#Variáveis de ambiente
ENV MYSQL_USER=MYSQLJOAO
ENV MYSQL_ROOT_PASSWORD=root

# Script
COPY ./init.sql /docker-entrypoint-initdb.d/
COPY ./backup.sql /docker-entrypoint-initdb.d/
# Porta 
EXPOSE 3306
