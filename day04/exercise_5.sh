#!/bin/bash

# This script uses an age entered by a user to determine the message to prompt the user

read -p "Your name: " name
read -p "Age: " age

if [ $age -ge 18 ] && [ $name == "Admin" ]; then
	echo "Access granted."
else
	echo "Access denied."
fi

