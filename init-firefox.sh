#!/bin/bash
set -e

repo_path="$1"

cd $repo_path/pentadactyl
DISPLAY=:0 make installxpi
