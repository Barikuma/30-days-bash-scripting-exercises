#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

file=$1

if [ -e $file ]; then
	if [ -f $file ]; then
		new_filename="processed_$file"
		mv $file $new_filename
	else
		echo "$file is not a file."
		exit 1
	fi
else
	echo "File does not exist."
	exit 1
fi

