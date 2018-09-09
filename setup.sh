#!/bin/bash

# Create data directory
mkdir data || true

# Create backup directory
mkdir backup || true

#Create backup binaries directory
mkdir bin || true

# Create database
echo "Creating database..." 
./wp_create_database.sh
sleep 3s

# Start Wordpress
echo "Starting Wordpress.."
docker-compose up -d
sleep 10s

# Setup Wordpress
echo "Configuring Wordpress..."
./wp_fresh.sh
sleep 3s

#Update Wordpress core and components
echo "Updating Wordpress..."
./wp_update_core_plugins.sh
