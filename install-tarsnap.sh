#!/bin/bash
set -e

install_dir="$1"

temp_dir="/tmp/$(date +"%s")"
mkdir $temp_dir
wget https://www.tarsnap.com/download/tarsnap-autoconf-1.0.36.1.tgz -O /tmp/tarsnap-autoconf-1.0.36.1.tgz
mkdir -p $install_dir
extract_dir="$install_dir/tarsnap-autoconf-1.0.36.1"
tar xvf /tmp/tarsnap-autoconf-1.0.36.1.tgz -C $install_dir
cd $extract_dir
./configure
make all
make install
