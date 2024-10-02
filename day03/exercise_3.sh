#!/bin/bash

# This script prints out values stored in an array and its index number

books=("Da Vinci Code" "Lost Symbol" "Origin" "Angels and Demons" "Digital Fortress")

list_length=${#books[@]}

for ((i=0; i<$list_length; i++)); do
	echo "${books[$i]} ----- index $i"
done

