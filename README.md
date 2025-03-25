# Observer - SBOM generation benchmarks

This repository contains various benchmarks and test-cases related to SBOM generation with [observer](https://github.com/sbom-observer/observer-cli).

In some cases the benchmarks also generates SBOMSs for other tools to compare against - this should not be considered a rigorous evaluation of those tools, but rather as a sanity check.

# Results

All benchmarks should have example results (SBOMs) committed to the repository for easy evaluation without running the benchmarks.

For tests that compare the output from different tools, we expect to automatically update results using up-to-date versions on a regular basis (TODO).

## Prerequisites

The benchmarks and tests uses Docker to provide a reproducible environment.

Some of the benchmarks use eBPF (see [build-observer](https://github.com/sbom-observer/build-observer)) and needs to be run with privileged access in Docker. Please use a VM configured to match your security policies to run the Docker daemon.

Before running any of the benchmarks you need to setup any shared resources (in the root of this repository):

- Build shared images - run `build-images.sh` in the root of this repository
- For eBPF based tests - expose *debugfs* as a docker volume - `docker volume create --driver local --opt type=debugfs --opt device=debugfs debugfs`

