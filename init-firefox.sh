#!/bin/bash
cd ~/z/gl/dactyl/pentadactyl
DISPLAY=:0 make installxpi
DISPLAY=:0 firefox https://addons.mozilla.org/firefox/downloads/latest/6366/addon-6366-latest.xpi
