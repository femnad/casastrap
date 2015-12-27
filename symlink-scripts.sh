#!/bin/bash
set -e
mkdir -p ~/bin
cd ~/bin
find ~/z/fm/{protection-from-scriptification,dzenitor,ysnpassmenu}/* -executable -type f -exec ln -s '{}' \;
