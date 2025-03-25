#!/bin/bash

for os in debian; do
    docker build --progress=plain -f Dockerfile.$os -t observer-benchmark-cpython-$os .
done
