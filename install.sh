#!/bin/bash
# Author: PietroVN
# Install script for video

# Check if we are running as root
[[ ${UID} != "0" ]] && echo "install.sh need root permissions"
[[ ${UID} != "0" ]] && exit 0

# Soft link to /usr/local/bin
ln -s $(pwd)/anime /usr/local/bin/anime
ln -s $(pwd)/deps/search/search /usr/local/bin/search

# Give executable permissions
chmod +x /usr/local/bin/anime
chmod +x /usr/local/bin/search
