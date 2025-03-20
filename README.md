# Observer - SBOM generation benchmarks

This repository contains various benchmarks and test cases related to SBOM generation with [observer](https://github.com/sbom-observer/observer-cli)

# Results

All benchmarks should have example results (SBOMs) committed to the repository for easy evaluation without running the benchmarks.

For tests that compare the output from different tools, we expect to automatically update results using up-to-date versions on a regular basis (TODO).

## Prerequisites

The benchmarks and tests uses Docker to provide a reproducible environment.

Some of the benchmarks use eBPF (see [build-observer](https://github.com/sbom-observer/build-observer)) and run with privileged access in Docker.

Before running any of the benchmarks you need to setup any shared resources:

- Build shared images - run `build-images.sh` in the root of this repository
- For eBPF based tests - expose *debugfs* as a docker volume - `docker volume create --driver local --opt type=debugfs --opt device=debugfs debugfs`

