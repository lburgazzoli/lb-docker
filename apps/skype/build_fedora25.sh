#!/usr/bin/env bash


docker build \
    --file=./Dockerfile.fedora25 \
    --tag="lburgazzoli/app-skype" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
