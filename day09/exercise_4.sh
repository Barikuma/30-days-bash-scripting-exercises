#!/bin/bash

read -p "Path to file: " file
declare -a file_lines
i=0
if [ -e $file ]; then
	if [ -f $file ]; then
		for line in $(cat $file); do
			file_lines[$i]=${line^^}
			let i=i+1
		done
	else
		echo "$file is a directory"
		exit 1
	fi
else
	echo "$file is not an existing file"
	exit 1
fi

echo ${file_lines[@]}

