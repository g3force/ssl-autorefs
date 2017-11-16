#!/bin/bash

# stop on errors
set -e

echo "CMDragons"
cd cmdragons
mkdir -p build
cd build
cmake ..
make
cd ../..


echo "ERforce"
cd erforce
git submodule update --init
mkdir -p build
cd build
cmake ..
make
cd ../..

echo "TIGERs"
cd tigers
mvn install -DskipTests -Dmaven.javadoc.skip=true
cd ..

echo "Done"
