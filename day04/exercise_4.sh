#!/bin/bash

# This script checks if a user has write permissions for a file

read -p "Enter filename: " filename
user=$(whoami)

if [ -e "$filename" ]; then
	if [ -w "$filename" ]; then
		echo "User $user has write permissions."
	else
		echo "User $user does not have write permissions."
	fi
else
	echo "File does not exist."
	exit 1
fi

