#!/bin/bash

if [ "$1" == "-c" ] || [ "$1" == "--continue" ]; then
  set +e
else
  set -e
fi

impls=`cat activeImplementations.cfg`
for b in $impls; do
	./build_$b.sh
done
