#!/bin/bash

file_path="Arena/hero.txt"

if [ -f $file_path];then
    echo "Hero found!"
else
    echo "Hero not found!"
fi
