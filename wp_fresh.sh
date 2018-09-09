#!/bin/bash

#source environment variables
source .env
docker-compose run --rm wpcli db reset --yes
# change values on this line
docker-compose run --rm wpcli core install --url=${WORDPRESS_DOMAIN} --title="Welcome to ${WORDPRESS_DOMAIN}" --admin_user=${WORDPRESS_ADMIN} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL}
# change value on this line
docker-compose run --rm wpcli option update blogdescription "This is the tagline."
docker-compose run --rm wpcli core update
#docker-compose run --rm wpcli plugin install customizer-theme-resizer jetpack --activate
docker-compose run --rm wpcli theme update --all
docker-compose run --rm wpcli plugin update --all
# set your theme choice on this line
#docker-compose run --rm wpcli theme install https://downloads.wordpress.org/theme/best-reloaded.0.14.0.zip --activate
docker-compose run --rm wpcli media regenerate --yes

