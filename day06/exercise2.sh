#!/bin/bash

# This script is used to calculate the factorial of a number using recursion

factorial() {
	if [ $1 -eq 1 ]; then
		echo 1
	else
		local n=$(($1-1))
		local result=$(factorial $n)
		echo $(($1*$result))
	fi
}

read -p "Enter a number: " number

result=$(factorial $number)

echo "The factorial of $number is $result."
