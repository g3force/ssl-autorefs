#!/bin/sh

impls=`cat activeImplementations.cfg`
for b in $impls; do
        ./run_$b.sh &
done
