#!/bin/bash

# This script checks if a file exists and prints out its contents. If it doesn't exist, the file is created with some default text

read -p "Filename: " filename

if [ -e "$filename" ] && [ -f "$filename" ]; then
	echo
	echo "File contents"
	echo "-------------"
	cat $filename
else
	echo "This is a default text." > $filename
fi

