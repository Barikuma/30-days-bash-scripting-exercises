#!/bin/bash

favorite_food=("food 1" "food 2" "food 3" "food 4")

length=${#favorite_food[@]}

for ((i=0; i<$length; i++)); do
	echo ${favorite_food[$i]}
done

