#!/bin/bash
prefixes="$@"

for prefix in $prefixes
do
    mkdir -p "$HOME/.cache/mutt/${prefix}header"
    mkdir -p "$HOME/.cache/mutt/${prefix}message"
done
