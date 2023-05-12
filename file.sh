#!/bin/bash

# Write a shell script that takes a directory path as input and prints the number of files in that directory (excluding subdirectories).


if [ -d "$1" ]
then
  cd "$1"
  files=(*)
  echo "${files[@]}"
  num_files=0
  for file in "${files[@]}"
  do
    if [ -f "$file" ]
    then
      num_files=$((num_files+1))
    fi
  done
  echo "Number of files in directory $1: $num_files"
  
else
  echo "Error: $1 is not a directory"
fi




 