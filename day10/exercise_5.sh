#!/bin/bash

is_palindrome() {
	local word=$1
	local check=$(echo $word | rev)

	if [ $word == $check ]; then
		echo true
		return 0
	else
		echo false
		return 1
	fi
}

read -p "Enter a word to check: " word
word=${word,,}
status=$(is_palindrome $word)

echo $status
