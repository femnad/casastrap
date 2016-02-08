#!/bin/bash
set -e
repo_dir="$1"
cd $repo_dir
./autogen.sh
./configure
make
make install
