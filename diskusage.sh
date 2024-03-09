#!/bin/bash
if [[ $1 == '-d' ]]; then
all_files=true
shift 1
fi

if [[ $1 == '-n' && $2=~[0-9]+$ ]]; then
entries=$2
shift 2
else
entries=8
fi

directory=$1

if [[ $all_files =  true ]]; then
sudo du -h $1 | sort -rh | head -$entries
else
sudo du -h --max-depth=1 $1 | sort -rh | head -$entries
fi
