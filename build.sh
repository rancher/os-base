#!/bin/bash

cd $(dirname $0)

IMAGE_ID=rancher-os-base-build

./scripts/ci --docker ${IMAGE_ID}
mkdir -p dist
docker run -it -v $(pwd)/dist:/source/target $IMAGE_ID
