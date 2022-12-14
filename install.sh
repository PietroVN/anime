#!/bin/bashy
########################
# Author: Waltz        #
########################

# Check if we are running as root
[[ "$UID" != "0" ]] && echo "install.sh need root permissions"
[[ "$UID" != "0" ]] && exit 0

# Check for directory
[[ -z "$@" ]] && echo "You need to enter a path, e.g /usr/local/bin"
[[ -z "$@" ]] && exit 0

# Check if directory is valid
[[ -d "$@" ]] || echo "Invalid directory"
[[ -d "$@" ]] || exit 0

# Download search dependency
[[ -d "deps" ]] && rm -rf "deps"
mkdir "$deps
curl "https://raw.githubusercontent.com/Wa1t5/search/main/search" > "deps/search"

# Soft link to path
ln -s "$(pwd)/anime" "$@/anime"
ln -s "$(pwd)/deps/search/search" "$@/search"

# Give executable permissions
chmod +x "$@/anime"
chmod +x "$@/search"
