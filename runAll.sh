#!/bin/sh

cd erforce
build/bin/autoref &
cd ..

cd cmdragons
gnome-terminal -- bin/autoref &
cd ..

cd tigers
./run.sh &
cd ..

