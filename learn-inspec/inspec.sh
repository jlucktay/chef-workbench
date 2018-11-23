#!/usr/bin/env bash

# First tutorial
wget -O docker-compose.yml https://raw.githubusercontent.com/learn-chef/inspec/master/docker-compose.yml
docker-compose pull
docker-compose up -d
docker exec -it workstation bash
docker-compose down

# Second tutorial
wget -O docker-compose-nginx.yml https://raw.githubusercontent.com/learn-chef/inspec/master/docker-compose-nginx.yml
docker-compose -f docker-compose-nginx.yml pull
docker-compose -f docker-compose-nginx.yml up -d
docker exec -it workstation bash
docker-compose -f docker-compose-nginx.yml down
