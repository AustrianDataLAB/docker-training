#!/bin/bash

# compare push of base to scratch
docker tag base localhost:5000/my-base:v1
docker push localhost:5000/my-base:v1

docker tag scratch localhost:5000/my-scratch:v1
docker push localhost:5000/my-scratch:v1