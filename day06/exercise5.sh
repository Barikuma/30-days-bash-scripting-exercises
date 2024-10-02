#!/bin/bash

# This script generates a random password using uppercase and lowercase characters, special characters and numbers

passwd_gen() {
	local uppercase=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
	local lowercase=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
	local special=("!" "@" "#" "$" "%" "^" "&" "*" "(" ")" "-" "+" "=" "_" "." "," ";" ":" "<" ">" "?")
	local numbers=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
	local all_characters=("${uppercase[@]}" "${lowercase[@]}" "${special[@]}" "${numbers[@]}")
	local passwd=""
	local total_chars=${#all_characters[@]}

	for ((i=0; i<$1; i++)); do
		random_index=$((RANDOM % total_chars))
		passwd="$passwd${all_characters[$random_index]}"
	done

	echo "Password: $passwd"
}

read -p "Enter password length: " passwd_length

passwd_gen $passwd_length
