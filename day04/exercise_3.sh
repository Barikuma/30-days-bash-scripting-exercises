#!/bin/bash

# This script compares 2 numbers provided as command-line arguments

if [ $# -ne 2 ]; then
	echo "Usage: $0 <number 1> <number 2>"
	exit 1
fi

if [ $1 -gt $2 ]; then
	echo "$1 is greater than $2."
elif [ $1 -lt $2 ]; then
	echo "$1 is less than $2."
else
	echo "$1 and $2 are equal."
fi


