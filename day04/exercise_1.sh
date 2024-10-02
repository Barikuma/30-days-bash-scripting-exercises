#!/bin/bash

# This script checks if a number entered by a user is positive, negative or a zero

read -p "Enter a number: " number

if [ "$number" -gt 0 ]; then
	echo "$number is positive."
elif [ "$number" -lt 0 ]; then
	echo "$number is negative."
else
	echo "A zero."
fi

