#!/bin/bash

read -p "Enter filename: " file

if [ ! -e $file ]; then
	echo "File does not exist."
else
	sort -n "$file" > sorted_numbers.txt
fi

