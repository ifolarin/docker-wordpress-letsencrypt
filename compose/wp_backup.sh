#!/bin/bash
source .env
docker-compose run --rm wpcli db export - | gzip > ./backup/${MYSQL_DATABASE}_backup-$(date +%Y-%m-%d-%H%M%S).sql.gz
