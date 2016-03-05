#!/bin/bash
set -e

install_dir="$1"

temp_dir="/tmp/$(date +"%s")"
mkdir $temp_dir
cd $temp_dir
wget http://rybczak.net/ncmpcpp/stable/ncmpcpp-0.7.tar.bz2
mkdir -p "$install_dir"
tar xvf ncmpcpp-0.7.tar.bz2 -C "$install_dir"
cd "$install_dir/ncmpcpp-0.7"
autoreconf --install --force
./configure
make
sudo make install
