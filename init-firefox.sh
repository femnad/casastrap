#!/bin/bash
cd ~/z/gl
git clone https://github.com/5digits/dactyl
cd dactyl/pentadactyl
sed -i 's/41/42' install.rdf
make installxpi
