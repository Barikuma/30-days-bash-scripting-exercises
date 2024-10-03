#!/bin/bash

# This script prints out the names of the files in a directory and their sizes

for file in ./*; do
	info=$(du -h $file)

	info_array=($info)

	echo "Filename: ${info_array[1]}"
	echo "File size: ${info_array[0]}B"
done

