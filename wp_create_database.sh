#!/bin/bash

source .env
source ./../../db/.env

docker-compose run --rm dbclient mysql -uroot -p${MYSQL_ROOT_PASSWORD} -h${MYSQL_HOST} -e "create database ${MYSQL_DATABASE} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO ${MYSQL_USER}@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

docker-compose run --rm dbclient  mysql -uroot -p${MYSQL_ROOT_PASSWORD} -h${MYSQL_HOST} -e "show databases;"
