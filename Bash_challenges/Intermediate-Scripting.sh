#1. Creates a directory called Arena_Boss.
#2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
#3. Generates a random number of lines (between 10 and 20) in each file.
#4. Sorts these files by their size and displays the list.
#5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.

#!/bin/bash

mkdir Arena_Boss
cd Arena_Boss
touch file{1..5}.txt

for file in *.txt
do
  echo "Generating random lines in $file"
  lines=$((RANDOM % 11 + 10))  # Random number of lines
  for ((i=1; i<=lines; i++))
  do
    echo "Line $i in $file" >> "$file"
  done
done

echo "Sorted list of .txt files by size (smallest to largest):"
ls -l *.txt | sort -k5 -n | awk '{print $9, $5}'


if grep -q "Victory" *.txt; then
   mkdir -p Victory_Archive
  for file in $(grep -l "Victory" *.txt); do
  mv "$file" Victory_Archive/
  done
else
  echo "No files contain the word 'Victory'."
fi

echo "Files containing 'Victory' have been moved to Victory_Archive."
