# Benchmark - SBOM for npm project with native dependencies

This benchmark creates a _build_ SBOM for the cpython binary.

The benchmark will build the project and generate a SBOM using observer.

The official SBOM included in the repository contains components in the cypython [distribution](https://www.python.org/downloads/release/python-3132/) and not just the cpython binary.
It does however not include all the build dependencies, or (transitive) runtime dependencies. 

A _complete_ SBOM for a cpython installation should probably be a combination of the build SBOM and the distribution SBOM.


# How to run

```
$ ./build-images.sh
$ ./benchmark.sh
```

# Results
See the `cpython.observer.cdx.{platform}.json` files.