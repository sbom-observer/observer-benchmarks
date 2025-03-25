#!/bin/bash

# check that the debugfs docker volume exists
if ! docker volume ls | grep -q debugfs; then
    echo "debugfs volume not found, please create it"
    exit 1
fi

for os in debian; do
    OUTPUT_SBOM="cpython.observer.cdx.${os}.json"
    #CMD="observer --debug build -b /output/$OUTPUT_SBOM -- make"
    CMD="observer --debug build -b /output/$OUTPUT_SBOM -- make && observer --debug repo --merge /output/$OUTPUT_SBOM build-observations.json"
    docker run --rm -it -v debugfs:/sys/kernel/debug:rw -v .:/output --net=host --pid=host --privileged observer-benchmark-cpython-${os}:latest /bin/bash -c "$CMD"
    docker run --rm -it -v debugfs:/sys/kernel/debug:rw -v .:/output --net=host --pid=host --privileged observer-benchmark-cpython-${os}:latest /bin/bash -c "cp /src/cpython.official.spdx.json /output"
done
