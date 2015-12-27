#!/bin/bash
source ~/.profile
homesick clone git@gitlab.com:femnad/base.git
homesick link base
homesick clone git@gitlab.com:femnad/homebin.git
homesick link homebin
hostname=$(hostname)
homesick clone git@gitlab.com:femnad/$hostname.git
homesick link $hostname
