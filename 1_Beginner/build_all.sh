#!/bin/bash

docker build --tag cmd        --file Dockerfile_1_CMD                   .
docker build --tag entrypoint --file Dockerfile_2_ENTRYPOINT            .
docker build --tag workdir    --file Dockerfile_3_WORKDIR    --no-cache .
docker build --tag user       --file Dockerfile_3_USER       --no-cache .

docker build --tag base       --file Dockerfile_5_BASE     .
docker build --tag scratch    --file Dockerfile_6_SCRATCH  .
docker build --tag multi      --file Dockerfile_7_MULTI    .