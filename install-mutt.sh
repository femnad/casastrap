#!/bin/bash
set -e
cd ~/z/gl/mutt
autoreconf -i
./configure --enable-{imap,smtp,hcache} --with-{ssl,sasl}
make
sudo make install
mkdir -p ~/.cache/mutt/{sa,fm,gm}{header,message}
touch ~/.mutt/{sa,fm,gm}aliases
