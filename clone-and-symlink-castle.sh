#!/bin/bash
source ~/.profile
homesick clone git@gitlab.com:femnad/base.git
homesick link base
hostname=$(hostname)
homesick clone git@gitlab.com:femnad/$hostname.git
homesick link $hostname
