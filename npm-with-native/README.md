# Benchmark - SBOM for npm project with native dependencies

This benchmark contains a simple npm project with native dependencies (bcrypt).

The benchmark will build the project and generate a SBOM using observer.


# How to run

```
$ ./build-images.sh
$ ./benchmark.sh
```

# Results

```
Metadata
+-----------+---------------------------------------+------------------------------------------+
|           | NPM-WITH-NATIVE.TRIVY.CDX.DEBIAN.JSON | NPM-WITH-NATIVE.OBSERVER.CDX.DEBIAN.JSON |
+-----------+---------------------------------------+------------------------------------------+
| BOMRef    | c5f7bd29-3144-4587-a217-9ca6d757d260  | bd79501a-0acb-4cd1-b21d-722b202414fd     |
| Type      | application                           | application                              |
| Name      | /src                                  | npm-with-native-dependencies             |
| Group     |                                       |                                          |
| Version   |                                       | 1.0.0                                    |
| Author    |                                       |                                          |
| Copyright |                                       |                                          |
+-----------+---------------------------------------+------------------------------------------+

Components
+-----+---+---------------------------+---------------------------------------+-------+------------------------------------------+----------+
|   # |   | NAME                      | NPM-WITH-NATIVE.TRIVY.CDX.DEBIAN.JSON | SCOPE | NPM-WITH-NATIVE.OBSERVER.CDX.DEBIAN.JSON | SCOPE    |
+-----+---+---------------------------+---------------------------------------+-------+------------------------------------------+----------+
|   8 | + | binutils                  |                                       |       | 2.40-2                                   | excluded |
|   9 | + | binutils-common           |                                       |       | 2.40-2                                   | excluded |
|  10 | + | binutils-x86-64-linux-gnu |                                       |       | 2.40-2                                   | excluded |
|  16 | + | cpp-12                    |                                       |       | 12.2.0-14                                | excluded |
|  23 | + | g++-12                    |                                       |       | 12.2.0-14                                | excluded |
|  25 | + | gcc-12                    |                                       |       | 12.2.0, 12.2.0-14                        | excluded |
|  26 | + | gcc-12-base               |                                       |       | 12.2.0-14                                |          |
|  27 | + | glibc                     |                                       |       | 2.36                                     |          |
|  35 | + | libasan8                  |                                       |       | 12.2.0-14                                |          |
|  36 | + | libatomic1                |                                       |       | 12.2.0-14                                |          |
|  37 | + | libbinutils               |                                       |       | 2.40-2                                   | excluded |
|  38 | + | libc-dev-bin              |                                       |       | 2.36-9+deb12u10                          |          |
|  39 | + | libc6                     |                                       |       | 2.36-9+deb12u10                          |          |
|  40 | + | libc6-dev                 |                                       |       | 2.36-9+deb12u10                          |          |
|  41 | + | libcc1-0                  |                                       |       | 12.2.0-14                                | excluded |
|  42 | + | libcom-err2               |                                       |       | 1.47.0-2                                 |          |
|  43 | + | libcrypt-dev              |                                       |       | 1:4.4.33-2                               |          |
|  44 | + | libcrypt1                 |                                       |       | 1:4.4.33-2                               |          |
|  45 | + | libctf-nobfd0             |                                       |       | 2.40-2                                   | excluded |
|  46 | + | libctf0                   |                                       |       | 2.40-2                                   | excluded |
|  47 | + | libgcc-12-dev             |                                       |       | 12.2.0-14                                |          |
|  48 | + | libgcc-s1                 |                                       |       | 12.2.0-14                                |          |
|  49 | + | libgmp10                  |                                       |       | 2:6.2.1+dfsg1-1.1                        | excluded |
|  50 | + | libgomp1                  |                                       |       | 12.2.0-14                                |          |
|  51 | + | libgprofng0               |                                       |       | 2.40-2                                   | excluded |
|  52 | + | libgssapi-krb5-2          |                                       |       | 1.20.1-2+deb12u2                         |          |
|  53 | + | libisl23                  |                                       |       | 0.25-1.1                                 | excluded |
|  54 | + | libitm1                   |                                       |       | 12.2.0-14                                |          |
|  55 | + | libjansson4               |                                       |       | 2.14-2                                   | excluded |
|  56 | + | libk5crypto3              |                                       |       | 1.20.1-2+deb12u2                         |          |
|  57 | + | libkeyutils1              |                                       |       | 1.6.3-2                                  |          |
|  58 | + | libkrb5-3                 |                                       |       | 1.20.1-2+deb12u2                         |          |
|  59 | + | libkrb5support0           |                                       |       | 1.20.1-2+deb12u2                         |          |
|  60 | + | liblsan0                  |                                       |       | 12.2.0-14                                |          |
|  61 | + | libmpc3                   |                                       |       | 1.3.1-1                                  | excluded |
|  62 | + | libmpfr6                  |                                       |       | 4.2.0-1                                  | excluded |
|  63 | + | libnsl-dev                |                                       |       | 1.3.0-2                                  |          |
|  64 | + | libnsl2                   |                                       |       | 1.3.0-2                                  |          |
|  65 | + | libquadmath0              |                                       |       | 12.2.0-14                                |          |
|  66 | + | libssl3                   |                                       |       | 3.0.15-1~deb12u1                         |          |
|  67 | + | libstdc++-12-dev          |                                       |       | 12.2.0-14                                |          |
|  68 | + | libstdc++6                |                                       |       | 12.2.0-14                                |          |
|  69 | + | libtirpc-common           |                                       |       | 1.3.3+ds-1                               |          |
|  70 | + | libtirpc-dev              |                                       |       | 1.3.3+ds-1                               |          |
|  71 | + | libtirpc3                 |                                       |       | 1.3.3+ds-1                               |          |
|  72 | + | libtsan2                  |                                       |       | 12.2.0-14                                |          |
|  73 | + | libubsan1                 |                                       |       | 12.2.0-14                                |          |
|  74 | + | libzstd1                  |                                       |       | 1.5.4+dfsg2-5                            | excluded |
|  75 | + | linux                     |                                       |       | 6.1.129                                  |          |
|  76 | + | linux-libc-dev            |                                       |       | 6.1.129-1                                |          |
|  93 | + | rpcsvc-proto              |                                       |       | 1.4.3-1                                  |          |
| 109 | + | zlib1g                    |                                       |       | 1:1.2.13.dfsg-1                          | excluded |
+-----+---+---------------------------+---------------------------------------+-------+------------------------------------------+----------+
| 110 |   |                           | 59                                    |       | 112                                      |          |
+-----+---+---------------------------+---------------------------------------+-------+------------------------------------------+----------+
```

