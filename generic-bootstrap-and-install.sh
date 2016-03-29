#!/bin/bash
set -e

repo_dir="$1"
configure_flags="$2"

cd "$repo_dir"
./bootstrap.sh
if [ -n "$configure_flags" ]
then
    ./configure "$configure_flags"
else
    ./configure
fi
make
