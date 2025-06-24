#Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

#!/bin/bash

if [ -z "$1" ];then
    echo "no directory provided"
    exit 1
fi

directory="$1"

ls -l "$directory"/*.txt | sort -k5 -n

echo "Sorted list of .txt files in '$directory' (by size, smallest to largest):"
