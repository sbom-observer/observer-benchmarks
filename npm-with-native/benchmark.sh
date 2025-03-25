#!/bin/bash

# check that the debugfs docker volume exists
if ! docker volume ls | grep -q debugfs; then
    echo "debugfs volume not found, please create it"
    exit 1
fi

for os in debian; do
    OUTPUT_SBOM="npm-with-native.observer.cdx.${os}.json"
    CMD="observer --debug build -- npm install --build-from-source --no-progress && cp build-observations.json /output && observer --debug repo --merge /output/$OUTPUT_SBOM ."
    docker run --rm -it -v debugfs:/sys/kernel/debug:rw -v .:/output --net=host --pid=host --privileged observer-benchmark-npm-with-native-${os}:latest /bin/bash -c "$CMD"

    OUTPUT_SBOM="npm-with-native.trivy.cdx.${os}.json"
    CMD="npm install &&trivy fs --skip-db-update --skip-java-db-update --format cyclonedx --output /output/$OUTPUT_SBOM /src"
    docker run --rm -it -v .:/output --net=host --pid=host --privileged observer-benchmark-npm-with-native-${os}:latest /bin/bash -c "$CMD"
done
