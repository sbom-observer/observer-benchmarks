#!/bin/bash

# check that the debugfs docker volume exists
if ! docker volume ls | grep -q debugfs; then
    echo "debugfs volume not found, please create it"
    exit 1
fi

for os in amzn ubuntu debian redhat; do
    OUTPUT_SBOM="nginx.cdx.${os}.json"
    CMD="observer --debug build -b /output/$OUTPUT_SBOM -- make && cp build-observations.json /output/build-observations.${os}.json"
    docker run --rm -it -v debugfs:/sys/kernel/debug:rw -v .:/output --net=host --pid=host --privileged observer-benchmark-${os}:latest /bin/bash -c "$CMD"
done
