#!/bin/bash

export WHAT_DO_I_WANT="ADLS_EVERYWHERE"

docker run \
  --env WHAT_DOES_OUR_CONTAINER_WANT=${WHAT_DO_I_WANT} \
  --rm --tty --interactive \
  ubuntu bash