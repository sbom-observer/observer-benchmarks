# Benchmark - SBOM for npm project with native dependencies

This benchmark creates a _build_ SBOM for Erlang OTP.

The benchmark will build the project and generate a SBOM using observer.

# How to run

```
$ ./build-images.sh
$ ./benchmark.sh
```

# Results

See the `otp.observer.cdx.{platform}.json` files.

The SBOM is missing some vendored dependencies (ex. `zlib`) so benchmarks should be re-run when support for vendored dependencies is added to observer.