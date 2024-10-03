#!/bin/bash

# This scripts creates a multiplication table using nested for loops

for i in {1..5}; do
	echo
	echo "--------------------"
	echo "$i Times Table"
	echo "--------------------"
	for j in {1..12};do
		echo "$i * $j = $(($i*$j))"
	done
done

