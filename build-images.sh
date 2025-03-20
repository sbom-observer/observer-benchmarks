#!/bin/bash

# build observer cli
docker build --progress=plain -f Dockerfile.builder -t observer-builder .
