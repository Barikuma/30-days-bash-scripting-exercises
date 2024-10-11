#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage: $0 <element 1> <element 2>... <element n>"
	exit 1
fi

declare -a my_array
i=0
for arg in $@; do
	my_array[$i]=$arg
	i=$(($i+1))
done

echo "There are ${#my_array[@]} arguments in the array."

for i in ${!my_array[@]}; do
	echo "Element ${my_array[$i]} index $i"
done

