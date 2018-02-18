#!/bin/sh

for r in run_*.sh; do
	./$r &
done
