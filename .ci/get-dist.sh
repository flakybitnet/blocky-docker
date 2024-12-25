#!/bin/sh
set -eu

set -a
. .ci/lib.sh
set +a

echo && echo 'Update and install required system packages and dependencies'
apt update
apt install -y wget

echo && echo "Downloading blocky $BLOCKY_VERSION"
wget "https://github.com/0xERR0R/blocky/releases/download/$BLOCKY_VERSION/blocky_${BLOCKY_VERSION}_Linux_x86_64.tar.gz"
wget "https://github.com/0xERR0R/blocky/releases/download/$BLOCKY_VERSION/blocky_checksums.txt"
sha256sum -c --ignore-missing blocky_checksums.txt
mkdir dist
tar -xpzf "blocky_${BLOCKY_VERSION}_Linux_x86_64.tar.gz" -C dist

echo && echo "Downloading AdGuard block lists"
wget https://github.com/smthd-co/agh2blocky/archive/refs/heads/main.tar.gz -O agh-lists.tar.gz
mkdir -p blocklists/agh
tar -xpzf agh-lists.tar.gz -C blocklists/agh --strip-components=2 agh2blocky-main/filters

echo && echo 'Done'

