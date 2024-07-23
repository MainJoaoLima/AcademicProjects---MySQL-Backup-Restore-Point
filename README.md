## Sobre

Esse é um projeto de MySQL para demonstrar o procedimento de um Backup e PITR ultilizando Docker.

Obs.: Devido a dificuldades no procedimento implementação dos arquivos de log binario não conseguimos implementar PITR. O procedimento descrito ira demonstrar ate recuparação de um backup comum.

## Pre Requisitos

- Windowns 11
- WLS1 & WLS2
- Docker Desktop
- MySQL 8.4
  
## Instalação

### Preparando o Ambiente

Crie uma pasta MySQL nesse destino C:\Program Files\Docker\Mysql
Add os arquivos: Dockerfile, init.sql, backup.sql

### Construindo a Imagem

powershell.exe

cd "C:\Program Files\Docker\MySQL"

docker build -t mysql_db .

### Executando 

docker run -d mysql_db

docker container ls

docker exec -it "CONTAINER ID"  bash


ls

cd docker-entrypoint-initdb.d/

ls

#Execultando MySQL dentro do Container

mysql -proot

show databases;

use student;

show tables;

select * from students;

exit


### Criando Backup

docker exec -it "CONTAINER ID"  bash

cd  docker-entrypoint-initdb.d

ls

mysqldump -u root -p --all-databases > backup.sql

root

### Deletando Data base

mysql -proot

show databases;

drop database student;

show databases;

exit

### Restaurando Arquivos

mysql -u root -p <./backup.sql

root

mysql -proot

show databases;

use student;

show tables;

select * from students;

exit

