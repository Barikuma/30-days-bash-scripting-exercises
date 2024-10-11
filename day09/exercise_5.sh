#!/bin/bash

declare -A country

country["Switzerland"]="Basel"
country["Nigeria"]="Lagos"
country["Finland"]="Helsinki"
country["South Africa"]="Cape Town"

countries=("Nigeria" "Switzerland" "Finland" "South Africa")

for i in ${!countries[@]}; do
	echo "The capital of ${countries[$i]} is ${country[${countries[$i]}]}"
done

