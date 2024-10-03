#!/bin/bash

# This script calculates the factorial of a number inputted by a user

read -p "Enter a number: " number

result=1

x=$number

while [ $x -gt 1 ]; do
	result=$(($result*$x))
	x=$(($x-1))

done
echo "The factorial of $number is $result"

