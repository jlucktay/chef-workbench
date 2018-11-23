#!/usr/bin/env bash

docker-compose pull
docker-compose up -d
docker exec -it workstation bash
docker-compose down
