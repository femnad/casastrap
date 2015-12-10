#!/bin/bash
timestamp=$(date +"%s")
mkdir "/tmp/$timestamp"
temp_archive="/tmp/$timestamp/libspotify.tar.gz"
wget https://developer.spotify.com/download/libspotify/libspotify-12.1.51-Linux-x86_64-release.tar.gz -O $temp_archive
tar xvf $temp_archive -C ~/z/dy/
cd ~/z/dy/libspotify-12.1.51-Linux-x86_64-release
sudo make install
pip install mopidy --user
pip install pyspotify --user
pip install Mopidy-Spotify --user
pip install Mopidy-Spotify-Tunigo --user
cat << EOF >> "$HOME/.profile"
$PATH="$PATH:$HOME:/.local/bin"
EOF
