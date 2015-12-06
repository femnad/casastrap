#!/bin/bash
temp_dir="/tmp/$(date +"%s")"
mkdir $temp_dir
wget https://www.tarsnap.com/download/tarsnap-autoconf-1.0.36.1.tgz -O /tmp/tarsnap-autoconf-1.0.36.1.tgz
install_base="/home/femnad/z/dy"
mkdir -p $install_base
install_dir="$install_base/tarsnap-autoconf-1.0.36.1"
tar xvf /tmp/tarsnap-autoconf-1.0.36.1.tgz -C $install_base
cd $install_dir
./configure
make all
sudo make install
chown -R femnad:femnad $install_base
