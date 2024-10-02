#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage: $0 <number 1> <number 2>"
	exit 1
fi

a=$1
b=$2


echo "Addition: $(($a+$b))"
echo "Subtraction: $(($a-$b))"
echo "Division: $(($a/$b))"
echo "Multiplication: $(($a*$b))"
