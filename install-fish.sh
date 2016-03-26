#!/bin/bash
set -e

cd "$1"
autoreconf
./configure
make
make install
