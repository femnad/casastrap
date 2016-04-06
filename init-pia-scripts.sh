#!/bin/bash
set -e
scripts_dir="$1"
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip -O /tmp/openvpn.zip
mkdir -p $scripts_dir
unzip -u /tmp/openvpn.zip -d $scripts_dir
auth_user_pass_file="$scripts_dir/up"
pass www/private-internet-access | tail -n 1 | awk -F ': ' '{print $2}' > "$auth_user_pass_file"
pass www/private-internet-access | head -n 1 >> "$auth_user_pass_file"
for ovpn_file in "$scripts_dir/"*.ovpn
do
    sed -i '/^$/d' "$ovpn_file"
    echo 'auth-user-pass up' >> "$ovpn_file"
    echo 'auth-nocache' >> "$ovpn_file"
done
chmod 600 "$auth_user_pass_file"
