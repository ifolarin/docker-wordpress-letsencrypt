#!/bin/bash

# Create database
./wp_create_database.sh

# Setup Wordpress
./wp_fresh.sh

#Update Wordpress core and components
./wp_update_core_plugins.sh
