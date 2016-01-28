#!/bin/bash
key_file_location="$1"
gpg_id="$2"
gpg --import $key_file_location
pass init $gpg_id
