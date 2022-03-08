#!/usr/bin/env bash

source $WORKSPACE/build-scripts/env.sh

echo " Build docker image for baseos-python image ......"
docker-compose $BUILD_COMPOSE_LIST build

docker-compose $BUILD_COMPOSE_LIST down


