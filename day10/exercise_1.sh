#!/bin/bash

string_reverse() {
	local sentence=$@
	reversed_sentence=""
	for word in $sentence; do
		reversed_word=$(echo $word | rev)
		reversed_sentence+="$reversed_word "
	done

	echo
	echo "Reversed sentence: $reversed_sentence"
}

read -p "Enter a sentence: " sentence

string_reverse $sentence
