#!/bin/sh
# psl1ght.sh by Dan Peori (dan.peori@oopo.net)

## Download the source code.
wget --continue --no-check-certificate https://github.com/andoma/PSL1GHT/tarball/696cd9e09ec7c2fdf23916c52c42e15116ec7745 -O psl1ght.tar.gz || { exit 1; }

## Unpack the source code.
rm -Rf psl1ght && mkdir psl1ght && tar --strip-components=1 --directory=psl1ght -xvzf psl1ght.tar.gz || { exit 1; }

## Create the build directory.
cd psl1ght || { exit 1; }

## Compile and install.
make && make install || { exit 1; }
