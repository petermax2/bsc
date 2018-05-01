# Bachelor Thesis #

This repository contains my Bachelor thesis.

## Copyright Notice ##

Copyright (C) 2018 Peter Nirschl.

This work is distributed under the terms of the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## Abstract ##

Storing login credentials in application configurations is a common problem.
Implementing cryptographic systems is complicated and increases the development effort.
We solve the problem by contributing new plugins to the configuration management software Elektra.
The new plugins are: `fcrypt` plugin for file-based encryption and decryption, and 'crypto` plugin for the encryption and decryption of single configuration values.
Applications can use the plugins by including them in Elektra's backend configuration.
No additional development effort is required.

We study the runtime and memory impact of the introduction of cryptographic methods.
We learn that when comparing libgcrypt, OpenSSL and Botan, that libgcrypt has the lowest runtime impact in our benchmark.
The benchmark also shows that file-based encryption and decryption is faster than the encryption and decryption of single configuration values.

## Generating the content ##

Please note that a LaTeX distribution is required for generating the content as PDF or PostScript file.
We recommend to install a full Texlive distribution.
The `build-all.sh` script inside the `thesis` folder can be used to generate the thesis as PDF.
