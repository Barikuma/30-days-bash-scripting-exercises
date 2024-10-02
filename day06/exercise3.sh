#!/bin/bash

# This script is used to find prime numbers between 1 and 100

function is_prime_number() {
	local half=$(($1/2))

	for ((i=2; i<=$half; i++)); do
		if [ $(($1%$i)) -eq 0 ]; then
			return 1
		fi
	done
	return 0
}

#read -p "Number: " number

#if is_prime_number $number; then
#	echo "$number is a prime number."
#else
#	echo "$number is not a prime number"
#fi

for j in {1..100}; do
	if is_prime_number $j; then
		echo "$j is a prime number."
	else
		echo "$j is not a prime number."
	fi
done

