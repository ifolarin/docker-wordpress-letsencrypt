#!/bin/bash

docker-compose run --rm wpcli core update
docker-compose run --rm wpcli plugin update --all
docker-compose run --rm wpcli theme update --all
