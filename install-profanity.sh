#!/bin/bash
set -e
cd /tmp
wget http://www.profanity.im/profanity-0.4.7.tar.gz
mkdir -p ~/z/dy
tar xvf profanity-0.4.7.tar.gz -C ~/z/dy
cd ~/z/dy/profanity-0.4.7
./bootstrap.sh
./configure --enable-notifications
make
sudo make install
