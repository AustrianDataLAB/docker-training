#!/bin/bash

# Absolute path to this script, e.g. /home/user/2_Intermediate/demo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/2_Intermediate
SCRIPTPATH=$(dirname "$SCRIPT")

docker network create -d bridge my-bridge-for-nginx

docker run \
  --publish 8080:80 \
  --network my-bridge-for-nginx \
  --name web \
  --volume $SCRIPTPATH/html:/usr/share/nginx/html \
  --rm --tty --interactive \
  nginx