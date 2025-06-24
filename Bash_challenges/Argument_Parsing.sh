#!/bin/bash

#Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.

if [ -z "$1" ]; then
    echo "no file provided"
    exit 1
fi

if [ ! -f "$1"]; then
    echo "file does not exist"
    exit 1
fi

line_count=$(wc -l < "$1")
echo "The file '$1' has $line_count lines."
