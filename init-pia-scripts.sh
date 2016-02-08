#!/bin/bash
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip -O /tmp/openvpn.zip
ovpn_scripts_dir=~/z/ce
mkdir -p $ovpn_scripts_dir
unzip /tmp/openvpn.zip -d $ovpn_scripts_dir
auth_user_pass_file="$ovpn_scripts_dir/up"
pass www/private-internet-access | tail -n 1 | awk -F ': ' '{print $1}' > "$auth_user_pass_file"
pass www/private-internet-access | head -n 1 >> "$auth_user_pass_file"
for ovpn_file in "$ovpn_scripts_dir/*.ovpn"
do
    echo 'auth-user-pass up' >> "$ovpn_file"
done
chmod 600 "$auth_user_pass_file"
