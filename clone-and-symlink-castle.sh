#!/bin/bash
source $HOME/.homesick/repos/homeshick/homeshick.sh 
homeshick clone git@gitlab.com:femnad/base.git
homeshick link -s base
homeshick clone git@gitlab.com:femnad/homebin.git
homeshick link -s homebin
hostname=$(hostname)
# Is this a host with a dedicated castle
# (Hope you keep naming hosts after elements)
lynx -dump -nolist http://www.ptable.com/ | egrep -o '[0-9]{1,3} [A-Za-z]{1,3} [A-Za-z]+' | grep -i $hostname
if [ "$?" -eq "0" ]; then
    castle=$hostname
else
    castle=basic
fi
homeshick clone git@gitlab.com:femnad/$castle.git
homeshick link -s $castle
