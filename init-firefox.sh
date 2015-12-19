#!/bin/bash
cd ~/z/gl
git clone https://github.com/5digits/dactyl
cd dactyl/pentadactyl
sed -i 's/41/43' install.rdf
make installxpi
