#!/bin/bash

vowels=(a e i o u)
count=0

read -p "Write something: " string
string=${string,,}

for word in $string; do
	for ((i=0; i<${#word}; i++)); do
		if [[ ${vowels[@]} =~ ${word:$i:1} ]]; then
			let count=count+1
		fi
	done
done

echo "There are $count vowels in the string"


