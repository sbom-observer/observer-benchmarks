# Benchmark - SBOM for building nginx on various platforms

This benchmark will build nginx on various platforms and generate a build SBOM using [observer](https://github.com/sbom-observer/observer-cli).

# How to run

```
$ ./build-images.sh
$ ./benchmark.sh
```

make sure you have debugfs mounted in the VM running the Docker daemon and exposed as a Docker volume.

# Results
See the `{platform}.cdx.json` files.

The `build-observations.{platform}.json` files contains the intermediate observations from the eBPF program observing the build.

# Notes on running eBPF programs in Docker
- https://hemslo.io/run-ebpf-programs-in-docker-using-docker-bpf/
- https://bpfman.io/v0.5.6/blog/2024/02/26/technical-challenges-for-attaching-ebpf-programs-in-containers/#overview-of-pid-namespaces-and-container-host-pids
