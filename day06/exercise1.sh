#!/bin/bash

# This script is used to reverse a string

reverse() {
	
	echo $1 | rev

}

read -p "Enter string: " string

reversed=$(reverse $string)

echo "The reverse string of $string is $reversed"
