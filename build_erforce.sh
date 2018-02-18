#!/bin/sh

set -e

echo "######################################"
echo "## Build ERforce"
echo "######################################"
cd erforce
git submodule update --init
mkdir -p build
cd build
cmake ..
make
