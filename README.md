# Bachelor Thesis #

This repository contains my Bachelor thesis.

## Copyright Notice ##

This work is distributed under the terms of the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## Abstract ##

Storing and providing login credentials in application configurations is a common problem in software development.
Storing such login credentials unencrypted on a storage medium is not advised,
but implementing cryptographic systems is complicated and increases the development effort.
We solve the problem by contributing new plugins to Elektra.
Elektra is a configuration management software with a plugin system.
The new plugins are: `fcrypt` plugin for file-based encryption and decryption, and `crypto` plugin for the encryption and decryption of single configuration values.

We study the runtime and memory impact of the introduction of cryptographic methods.
We learn that when comparing libgcrypt, OpenSSL and Botan, that libgcrypt has the lowest runtime impact in our benchmark setup.
We also learn that, in our benchmark setup, file-based encryption and decryption is faster than the encryption and decryption of single configuration values.

## Generating the content ##

Please note that a LaTeX distribution is required for generating the content as PDF or PostScript file.
We recommend to install a full Texlive distribution.
The `build-all.sh` script inside the `thesis` folder can be used to generate the thesis as PDF.
