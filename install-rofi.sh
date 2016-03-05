#!/bin/bash
set -e

clone_path="$1"

cd $clone_path
autoreconf -i
./configure
make
make install
