#!/bin/bash
cd "$1"
autoreconf -i
./configure
make
make install
ldconfig
