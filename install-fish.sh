#!/bin/bash
cd "$1"
autoreconf
./configure
make
make install
