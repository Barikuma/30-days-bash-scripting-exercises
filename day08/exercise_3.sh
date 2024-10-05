#!/bin/bash

# This script redirects the output of a command to a file and also to the standard output

read -p "Enter a command: " cmd

$cmd | tee -a output.txt

echo "" >> output.txt
