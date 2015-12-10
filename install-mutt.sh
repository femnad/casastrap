#!/bin/bash
cd ~/z/gl/mutt
autoconf
./configure --enable-{imap,smtp,hcache} --with-{ssl,sasl}
make
sudo make install
