#!/bin/bash

# Script: my_first_script.sh
# Description: This script demonstrates basic Bash scripting concepts
# Author: Barikuma
    

GREETING="Hello, World!"
MAX_COUNT=5
    
print_greeting() {
	echo "$GREETING"
}

count_down() {
	local count=$1
        while [ $count -gt 0 ]; do
            echo $count
            count=$((count - 1))
            sleep 1
        done
        echo "Blast off!"
}

echo "Starting the script..."

echo
echo "MENU"
echo "1. Print greeting."
echo "2. Count down."
echo
read -p "Choose an option: " option

if [ $option == "1" ]; then
	print_greeting
elif [ $option == "2" ]; then
	echo "Counting down from $MAX_COUNT"
	count_down $MAX_COUNT
else
	echo "Options are either 1 or 2."
	exit 1
fi

echo "Script execution completed."
