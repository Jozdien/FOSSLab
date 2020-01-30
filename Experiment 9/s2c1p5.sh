#!/bin/sh

if [ ! $# -eq 1 ]; then
	echo Provide MEMORY threshold as arguement.
	exit 0
fi

MAX_MEMORY=$1

processes=$(ps -o pid ax | grep -v PID)

for p in $processes; do
	memory=$(pmap $p | tail -n 1 | awk -F '[^0-9]*' '/[0-9]K/{ print $2 }')
	if [ ! -z $memory ] && [ $memory -gt $MAX_MEMORY ]; then
		echo Killing Process\(PID:$p\) with Memory:${memory}K
		# kill $p
	fi
done
