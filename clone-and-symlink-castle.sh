#!/bin/bash
set -e
source ~/.profile
homesick clone git@gitlab.com:femnad/base.git
homesick link -s base
homesick clone git@gitlab.com:femnad/homebin.git
homesick link -s homebin
hostname=$(hostname)
# Is this a regular host (Hope you keep naming hosts after elements)
curl -s http://periodic.lanl.gov/list.shtml | lynx -stdin -dump -nolist | sed -n '/Elements with their Symbol/,/Resources/p' | grep -i $hostname
if [ "$?" -eq "0" ]; then
    castle=$hostname
else
    castle=basic
fi
homesick clone git@gitlab.com:femnad/$castle.git
homesick link -s $castle
