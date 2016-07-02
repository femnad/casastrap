#!/bin/bash
source $HOME/.homesick/repos/homeshick/homeshick.sh
if [ $# -ne "1" ]
then
    echo 'Need a castle name'
    exit 1
fi
homeshick link -f $1
