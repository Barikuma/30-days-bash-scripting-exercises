#!/bin/bash

# This script prints out the current user, current directory and date

current_user=$(whoami)
current_directory=$(pwd)
date=$(date +"%Y-%m-%d %H:%M:%S")

echo "User Information"
echo "----------------"
echo "Current User: $current_user"
echo "Current Directory: $current_directory"
echo "Date: $date"

