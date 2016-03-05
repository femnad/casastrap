#!/bin/bash
set -e

repo_path="$1"

cd $repo_path
./autogen.sh
./configure
make
make install
