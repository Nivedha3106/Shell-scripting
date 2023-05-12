#!/bin/bash

# Write a shell script that takes a list of files as input and creates a new directory with the name "backup" and copies all the files into that directory. 
# The script should also create a compressed archive of the backup directory and save it as a timestamped file.


backup="$HOME/backup_$(date +%Y-%m-%d_%H-%M-%S)"

mkdir "$backup"

for file in "$@"
do
  if [ -e "$file" ];
  then
    cp -f "$file" "$backup/" || cp -p "$file" "$backup/"
  else
    touch "$backup/$file"
  fi
done

tar -czf "${backup}.tar.gz" "$backup"

# Print a success message
echo "Backup created successfully: ${backup}.tar.gz"
