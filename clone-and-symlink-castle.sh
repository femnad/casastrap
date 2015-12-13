#!/bin/bash
source ~/.profile
homesick clone git@gitlab.com:femnad/base.git
homesick symlink -f base
hostname=$(hostname)
homesick clone git@gitlab.com:femnad/$hostname.git
homesick symlink -f $hostname
