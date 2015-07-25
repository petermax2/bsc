# Bachelor Thesis #

This repository contains my Bachelor thesis.

## Copyright Notice ##

This work is distributed under the terms of the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## Abstract ##

Security has become a crucial aspect of modern day applications, especially when it comes to libraries.
`libelektra` (or simply Elektra) is essentially a hierarchical key-value database that is intended to store configuration data.
It features extensibility by providing a plugin system.

The goal is to enhance `libelektra` to provide **confidentiality** for sensitive values.
Those values should be protected against unauthorized usage by means of symmetric encryption.
An existing implementation of the Advanced Encryption Standard (AES) will be used for encryption.

Another security enhancement to `libelektra` is to provide **integrity** for configuration files.
Therefore an RSA-based signature algorithm will be used to detect unauthorized changes between the time the file has been persisted and reloaded again.

However, security comes at a cost, namely: comfort and performance.
The (possible) influences of security measures on the user experience are not covered in this thesis.
The main question will be if the introduction of cryptographic methods leads to a significant decline in performance.

## Generating the content ##

Please note that a LaTeX distribution is required for generating the content as PDF or PostScript file.
Also the [UseLATEX](https://github.com/kmorel/UseLATEX) CMake module should be available on your system.

* Verify the installation of the CMake module `UseLATEX.cmake` (you can simply copy the file into the root directory of the repository)

* Create a directory called `build`.

```
mkdir build
cd build
```

* Let CMake configure the build environment. make triggers the PDF creation

```
cmake ..
make
```