#!/bin/bash

docker-compose up

docker-compose -f docker-compose_dev.yml build
docker-compose -f docker-compose_dev.yml up