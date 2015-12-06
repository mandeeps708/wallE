#!/bin/bash
path=$PWD
#echo $path
base="$path"
photo=$(find $base -regex ".*jpg"  -type f | while read x; do echo "`expr $RANDOM % 1000`:$x"; done | sort -n | sed 's/[0-9]*://' | head -1)
feh --bg-fill $photo


