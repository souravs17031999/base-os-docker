#!/usr/bin/env bash

echo "exporting environment variables (build-scripts) .... "

export TOPDIR=$(git rev-parse --show-toplevel)
export FULL_BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
echo "Branch: $FULL_BRANCH_NAME"
export CURRENT_TAG=$(git describe --abbrev=0 --tags)
if [ $FULL_BRANCH_NAME == "master" ] 
then 
   echo "This is master branch build...."
   export TAGNAME=$CURRENT_TAG
else
   echo "This is feature branch build...."
   export TAGNAME="$CURRENT_TAG-jenkins-dev-$BUILD_NUMBER" 
fi
echo "Got tag: $TAGNAME"

export DOCKER_HUB_USERNAME="souravkumardevadmin"
export BUILD_COMPOSE_LIST="-f $TOPDIR/docker-compose.yml"