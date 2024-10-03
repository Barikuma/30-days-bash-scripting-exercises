#!/bin/bash

# Script: my_first_script.sh
# Description: This script demonstrates basic Bash scripting concepts
# Author: Barikuma

if [ -z $1 ]; then
	echo "Usage: $0 <username>"
	exit 1
fi

GREETING="Hello,"

print_greeting() {
	echo "$GREETING $1."
}

print_greeting $1
