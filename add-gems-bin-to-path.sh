#!/bin/bash
ruby_version=$(ls $HOME/.gem/ruby/)
cat << EOF >> ~/.profile
PATH="\$PATH:\$HOME/.gem/ruby/$ruby_version/bin"
EOF
