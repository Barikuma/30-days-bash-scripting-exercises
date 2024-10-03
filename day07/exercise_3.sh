#!/bin/bash

# Script: exercise_3.sh
# Description: This script demonstrates basic Bash scripting concepts
# Author: Barikuma

MAX_COUNT=$((RANDOM % 11))

count_down(){
        local count=$1
        if [ $count -gt 0 ]; then
                while [ $count -gt 0 ]; do
                        echo $count
                        count=$((count-1))
                        sleep 1
                done
                echo "Blast Off!"
        else
                echo "Number should be a positive and a non-zero number."
                exit 1
        fi
}

echo "Counting down from $MAX_COUNT"
count_down $MAX_COUNT
