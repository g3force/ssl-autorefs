#!/bin/bash

if [ "$1" == "-c" ] || [ "$1" == "--continue" ]; then
  set +e
else
  set -e
fi

for b in build_*.sh; do
	./$b
done
