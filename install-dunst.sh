#!/bin/bash
set -e
repo_dir="$1"
config_dir="$HOME/.config/dunst"

cd $repo_dir
make
make install
mkdir -p "$config_dir"
cp dunstrc "$config_dir"
