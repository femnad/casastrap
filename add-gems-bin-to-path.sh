#!/bin/bash
ruby_version=$(ls $HOME/.gem/ruby/)
echo >> ~/.profile <<EOF
PATH="$PATH:$HOME/.gem/ruby/$ruby_version/bin"
EOF
