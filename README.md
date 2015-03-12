# Bachelor Thesis #

This repository contains my Bachelor thesis.

## Copyright Notice ##

This work is distributed under the terms of the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## Abstract ##

TBD

## Generating the content ##

Please note that a LaTeX distribution is required for generating the content as PDF or PostScript file.
Also the [UseLATEX](https://github.com/kmorel/UseLATEX) CMake module should be installed on your system.

* Verify the installation of the CMake module `UseLATEX.cmake` (which is typically installed under `/usr/share/cmake/Modules`)

* Create a directory called `build`.

```
mkdir build
cd build
```

* Let CMake configure the build environment

```
cmake ..
```

* Use one of the Makefile targets to generate the content

```
make pdf
```
