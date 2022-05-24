#!/bin/bash

docker-compose up

docker-compose -f docker-compose_dev.yml build
docker-compose -f docker-compose_dev.yml up

docker exec -it my_dev_container /bin/bash
kompose convert -f docker-compose.yml