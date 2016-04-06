#!/bin/bash
set -e
cd "$1"
autoreconf -i
./configure
make
