#!/bin/bash

my_func1() {
	local old_array=$@
	declare -a new_array
	local i=0

	for old_element in ${old_array[@]}; do
		if [[ ! "${new_array[@]}" =~ "$old_element" ]]; then
			new_array[$i]=$old_element
			i=$(($i+1))
		fi
	done
	echo ${new_array[@]}
					
}

my_func2() {
	local old_array=$@
	declare -a new_array
	local i=0

	for old_element in ${old_array[@]}; do
		found=false
		if [ "${#new_array[@]}" -eq 0 ]; then
			new_array[$i]=$old_element
			i=$(($i+1))
			continue
		else
			for new_element in ${new_array[@]}; do
				if [[ "$new_element" == "$old_element" ]]
				then
					found=true
					break
				fi
			done
		fi
		if [ $found == false ]; then
			new_array[$i]=$old_element
			i=$(($i+1))
		fi
	done
	
	echo ${new_array[@]}
}

cars=(bmw audi dodge porsche x-class mercedes audi bmw porsche dodge)
echo ${cars[@]}
echo
echo "First function call"
my_func1 ${cars[@]}

echo

echo "Second function call"
my_func2 ${cars[@]}




