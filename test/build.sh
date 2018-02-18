#!/bin/sh
cd ssl-logtools
mkdir -p build
cd build
cmake ..
make
cd ../..

cd ssl-refbox
make
cd ..
