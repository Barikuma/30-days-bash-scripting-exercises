#!/bin/bash

# This script prints out the multiplication table of a number entered by a user

read -p "Enter number: " number

for i in {1..12}; do
	echo "$number * $i = $(($number*$i))"
done

