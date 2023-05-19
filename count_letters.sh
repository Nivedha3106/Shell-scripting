# Count the number of times a letter exists in a file, irrespective of the case of the letter. Both the file and the letter have to be taken in as input 

#!/bin/bash

read -p "Enter the file name: " file

if [ ! -f "$file" ]; then
   echo "Error: '$file' File does not exist"
   exit 1
fi

read -p "Enter a letter: " letter
if [ -z "$letter" ]; then
  echo "Error: Please type a letter"
  exit 1
fi

if [[ ! "$letter" =~ ^[[:alpha:]]$ ]]; then
    echo "Error: Letter must be a single alphabetical character."
    exit 1
fi

letter_count() {
    local count=$(grep -i -o "$letter" "$file" | wc -l)
    echo "No.of.occurrences of letter '$letter' in '$file':'$count'"
}

letter_count "$file" "$letter" 