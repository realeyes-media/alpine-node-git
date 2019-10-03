#!/bin/bash
set -xe

# Requires a working docker login to Quay.io configured locally to push built images to Quay.io
docker build -t quay.io/realeyes/alpine-node-git:node8 -f Dockerfile-Node8 .
docker build -t quay.io/realeyes/alpine-node-git:node10 -f Dockerfile-Node10 .
docker build -t quay.io/realeyes/alpine-node-git-ci:node8 -f Dockerfile-CI-Node8 .
docker build -t quay.io/realeyes/alpine-node-git-ci:node10 -f Dockerfile-CI-Node10 .

# Push to Quay.io
docker push quay.io/realeyes/alpine-node-git:node8
docker push quay.io/realeyes/alpine-node-git:node10
docker push quay.io/realeyes/alpine-node-git-ci:node8
docker push quay.io/realeyes/alpine-node-git-ci:node10

# Success!
echo "Haven't you done well"