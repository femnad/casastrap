#!/bin/bash
set -e
cd "$1"
make
make install
