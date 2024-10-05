#!/bin/bash

# This script redirects errors to a log file, but still displays the normal output

read -p "Enter command: " cmd

$cmd 2>> output.log

# This if statement checks if an error occured
if [ $? -ne 0 ]; then
	echo "An error occured. It has been redirected to the file output.log"
fi


