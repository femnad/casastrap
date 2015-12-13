#!/bin/bash
cd ~/z/gl/mutt
autoconf
./configure --enable-{imap,smtp,hcache} --with-{ssl,sasl}
make
sudo make install
mkdir -p ~/.cache/mutt/{sa,fm,gm}{header,message}
