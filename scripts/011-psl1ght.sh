#!/bin/sh
# psl1ght.sh by Dan Peori (dan.peori@oopo.net)

## Download the source code.
wget --continue --no-check-certificate https://github.com/andoma/PSL1GHT/tarball/aa6ce4aa80d6e64c3c2256eca8521dd346874399 -O psl1ght.tar.gz || { exit 1; }

## Unpack the source code.
rm -Rf psl1ght && mkdir psl1ght && tar --strip-components=1 --directory=psl1ght -xvzf psl1ght.tar.gz || { exit 1; }

## Create the build directory.
cd psl1ght || { exit 1; }

## Compile and install.
make && make install || { exit 1; }
