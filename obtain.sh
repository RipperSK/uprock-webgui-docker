#!/bin/bash

set -eEo pipefail

# Define version string
VER="v0.0.17"


# Verify if all commands are available
for c in wget ar tar; do
  which $c
done

# Get debian package
wget https://edge.uprock.com/v1/app-download/UpRock-Mining-$VER.deb

# Unarchive
ar x UpRock-Mining-$VER.deb

# Untar
tar --zstd -xvf data.tar.zst

# Copy over binary
cp ./bin/uprock-mining .

# Remove trash
rm -r ./bin ./usr ./data.tar.zst ./control.tar.zst ./UpRock-Mining-$VER*
