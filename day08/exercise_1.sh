#!/bin/bash

read -p "Enter filename: " file

if [ ! -e "$file" ]; then
	touch $file
fi	

read -p "Enter a text to append to a file: " text
echo $text >> $file


