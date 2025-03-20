#!/bin/bash

# build amzn, ubuntu, debian, redhat images
for os in amzn ubuntu debian redhat; do
    docker build --progress=plain -f Dockerfile.$os -t observer-benchmark-$os .
done
