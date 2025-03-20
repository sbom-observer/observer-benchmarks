# Benchmark - SBOM for building nginx on various platforms

This benchmark will build nginx on various platforms and generate a SBOM using observer (https://github.com/sbom-observer/build-observer).

# How to run

```
$ ./build-images.sh
$ ./benchmark.sh
```

# Results
See the `{platform}.cdx.json` files.

# Notes on running eBPF programs in Docker
- https://hemslo.io/run-ebpf-programs-in-docker-using-docker-bpf/
- https://bpfman.io/v0.5.6/blog/2024/02/26/technical-challenges-for-attaching-ebpf-programs-in-containers/#overview-of-pid-namespaces-and-container-host-pids
