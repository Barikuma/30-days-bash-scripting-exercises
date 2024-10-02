#!/bin/bash

# This script prints out the name of the script, the number of special variables passed to it and all special variables

name=$0
number_of_variables=$#
all_variables=$@

echo "Script name: $name"
echo "Number of special variables: $number_of_variables"
echo "All special variables: $all_variables"

