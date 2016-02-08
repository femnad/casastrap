#!/bin/bash
set -e
cd ~/z/gl/xchainkeys
autoreconf -i
./configure
make
sudo make install
mkdir -p ~/.config/xchainkeys
cp example.conf ~/.config/xchainkeys/xchainkeys.conf
