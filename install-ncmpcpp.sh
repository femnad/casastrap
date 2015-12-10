#!/bin/bash
temp_dir="/tmp/$(date +"%s")"
cd $temp_dir
wget http://rybczak.net/ncmpcpp/stable/ncmpcpp-0.7.tar.bz2
mkdir -p ~/z/dy/
tar xvf ncmpcpp-0.7.tar.bz2 -C ~/z/dy/
cd ~/z/dy/ncmpcpp-0.7/
autoreconf --install --force
./configure
make
sudo make install
