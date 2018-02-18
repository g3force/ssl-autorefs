#!/bin/sh

set -e

echo "######################################"
echo "## Build CMDragons"
echo "######################################"
cd cmdragons
mkdir -p build
cd build
cmake ..
make
cd ../..
