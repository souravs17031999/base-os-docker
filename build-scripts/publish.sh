#!/usr/bin/env bash

source $WORKSPACE/build-scripts/env.sh

echo "Publishing to docker hub....."
docker login -u $dockerHubUsername -p $dockerHubPassword

echo "==================================*********==================================="
docker tag baseos-python_baseos_python:latest ${DOCKER_HUB_USERNAME}/baseos-python_baseos_python:$TAGNAME
docker push ${DOCKER_HUB_USERNAME}/baseos-python_baseos_python:$TAGNAME
echo "==================================*********==================================="