# Find and replace word in a file and verify, only the first 5 occurrences of a word, multiple words with one word

#!/bin/bash

file="replace.txt"

word=("she")
rep_word="Nivedha"

count=0

for i in "${word[@]}"; do
   
    sed -i "0,/$i/{s/$word/$rep_word/}" "$file"
    ((count++))
    
    if [ $count -eq 5 ]; then
        break
    fi
done

grep -n "$rep_word" "$file"
