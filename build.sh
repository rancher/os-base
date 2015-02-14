#!/bin/bash

cd $(dirname $0)

export DOCKER_IMAGE=rancher-os-base-build

./scripts/ci
mkdir -p dist
docker run -it -v $(pwd)/dist:/source/target $DOCKER_IMAGE
