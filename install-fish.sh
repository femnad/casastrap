#!/bin/bash
mkdir -p ~/z/gl
cd ~/z/gl
git clone https://github.com/fish-shell/fish-shell.git
cd fish-shell
autoconf
./configure
make
sudo make install
