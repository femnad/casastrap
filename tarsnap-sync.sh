#!/bin/bash
tarsnap --fsck
keyfile=$(tarsnap --list-archives | grep '^key-.*' | sort | tail -n 1)
tarsnap vxf $keyfile
last_archive=$(tarsnap --list-archives | grep '^pass-.*' | sort | tail -n 1)
tarsnap xvf $last_archive
