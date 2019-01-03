#!/usr/bin/env bash

# First tutorial - https://learn.chef.io/modules/try-inspec
wget -O docker-compose.yml https://raw.githubusercontent.com/learn-chef/inspec/master/docker-compose.yml
docker-compose pull
docker-compose up -d
docker exec -it workstation bash
docker-compose down

# Second tutorial - https://learn.chef.io/modules/explore-inspec-resources
wget -O docker-compose-nginx.yml https://raw.githubusercontent.com/learn-chef/inspec/master/docker-compose-nginx.yml
docker-compose -f docker-compose-nginx.yml pull
docker-compose -f docker-compose-nginx.yml up -d
docker exec -it workstation bash
docker-compose -f docker-compose-nginx.yml down

# Third tutorial - https://learn.chef.io/modules/create-profile-from-doc
docker-compose pull
docker-compose up -d
docker exec -it workstation bash
docker-compose down
