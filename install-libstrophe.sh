#!/bin/bash
cd ~/z/gl/libstrophe
./bootstrap.sh
./configure
make
sudo make install
sudo ldconfig
