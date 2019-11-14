#!/bin/bash

echo "Setting up docker containers. This may take some time...."
docker-compose up -d db
echo "Waiting for db containers initialize (1 min)"
docker-compose exec db ./bin/populate-db.sh
echo "Bringing up tomcat"
docker-compose up -d tomcat_oscar

echo "OSCAR is set up at http://localhost:8091/oscar_mcmaster"
echo "This script is a fork of "Oscar in a Box" by http://nuchange.ca"

