# syntax=docker.io/docker/dockerfile:1

FROM golang:1.24 AS base

FROM base AS builder
RUN apt-get update && apt-get install -y ca-certificates tzdata curl git

WORKDIR /src
ENV BRANCH=main
ADD "https://api.github.com/repos/sbom-observer/observer-cli/git/ref/heads/${BRANCH}" observer-version.json
RUN git clone https://github.com/sbom-observer/observer-cli.git
RUN cd observer-cli && git checkout ${BRANCH} && go build -o observer .

