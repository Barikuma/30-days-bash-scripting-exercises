#!/bin/bash

# This script asks a user to guess the number the program has chosen between 1 and 10

program_choice=$(($RANDOM % 11))

while true; do
	echo "I've selected a number between 1 and 10."
	read -p "Guess my number: " guess

	if [ $guess -eq $program_choice ]; then
		echo "Correct Guess!!"
		break
	fi

	echo "Wrong Guess. Try Again."
	echo
done

