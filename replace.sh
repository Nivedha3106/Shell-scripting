# Replace all the occurrences of '.' to '/' in the first 5 lines of a file. 

#!/bin/bash

path="/Users/nivedha/Documents/script/replace.txt"

temp="temp.txt"
head -n 5 "$path" | sed 's/\./\//g' > "$temp"
cat "$temp" > "$path"  #Overwrite the original file
rm "$temp" #remove temp
echo "Occurrences of '.' has been changed to '/' successfully" 