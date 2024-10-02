#!/bin/bash

# This script prints out the number of lines, words and characters in a file

word_count() {
	if [ -e $1 ]; then
		if [ -f $1 ]; then
			local file_count=$(wc $1)
			local count_array=($file_count)

			echo "Filename: ${count_array[3]}"
			echo "Number of lines: ${count_array[0]}"
			echo "Number of words: ${count_array[1]}"
			echo "Number of characters: ${count_array[2]}"
		else
			echo "$1 is not a file."
			exit 1
		fi
	else
		echo "File does not exist."
		exit 1
	fi
}

read -p "Enter filename: " filename

word_count $filename
