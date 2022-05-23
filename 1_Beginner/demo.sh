#!/bin/bash

./build_all.sh

docker run --rm -it cmd         GIVE_ME_MORE_ADLS
docker run --rm -it cmd         /hello-world.sh GIVE_ME_MORE_ADLS

docker run --rm -it entrypoint  GIVE_ME_MORE_ADLS
docker run --rm -it entrypoint  /hello-world.sh GIVE_ME_MORE_ADLS