#!/bin/bash

mkdir Backup

for file in Arena/*.txt; do
    cp "$file" Backup/
done
