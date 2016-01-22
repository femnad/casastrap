#!/bin/bash
set -e
libspotify_extract_location="$1"
timestamp=$(date +"%s")
mkdir "/tmp/$timestamp"
temp_archive="/tmp/$timestamp/libspotify.tar.gz"
wget https://developer.spotify.com/download/libspotify/libspotify-12.1.51-Linux-x86_64-release.tar.gz -O $temp_archive
tar xvf $temp_archive -C $libspotify_extract_location
echo "/usr/local/lib" > /etc/ld.so.conf.d/usr-local-lib.conf
cd $libspotify_extract_location/libspotify-12.1.51-Linux-x86_64-release
make install
pip install mopidy
pip install pyspotify
pip install Mopidy-Spotify
pip install Mopidy-Spotify-Tunigo
cat << EOF >> "$HOME/.profile"
PATH="\$PATH:\$HOME:/.local/bin"
EOF
