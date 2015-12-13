#!/bin/bash
homesick clone git@gitlab.com:femnad/base.git
homesick symlink base
hostname=$(hostname)
homesick clone git@gitlab.com:femnad/$hostname.git
homesick symlink $hostname
