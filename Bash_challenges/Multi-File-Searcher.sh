#Mission: Create a script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase.

#!/bin/bash

if [ -d "$1" ]; then
    directory="$1"
else
    echo "No directory provided or directory does not exist."
    exit 1
fi

if [ -z "$2" ]; then
    read -p "Enter the word or phrase to search for: " search_term
else
    search_term="$2"
fi

grep -l "$search_term" "$directory"/*.log
