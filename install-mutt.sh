#!/bin/bash
set -e

repo_dir="$1"

cd "$repo_dir"
autoreconf -i
./configure --enable-{imap,smtp,hcache} --with-{ssl,sasl}
make
make install
