#!/bin/bash -e

cd `dirname $0`

TOBUILD=${1:-debian8 debian9 fedora26 ubuntu16.04 ubuntu17.04}
BASE=docker.io/exaile/exaile-testimg

for i in ${TOBUILD}; do
    echo "Building $BASE:$i"
    docker build --rm -t $BASE:$i -f Dockerfile.$i .
done
