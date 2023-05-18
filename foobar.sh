#!/bin/bash


if [ $# -eq 0 ]; then
  echo "Usage: $0 <dir_path>"
  exit 1
fi

dir_path="$1"

# Check if the provided directory path exists
if [ ! -d "$dir_path" ]; then
  echo "Error: Directory '$dir_path' does not exist."
  exit 1
fi

replace_foo_with_bar() {
    sed 's/foo/bar/g' "$1" > "$1.bak"
#   sed -i 's/foo/bar/g' "$1"
}

find "$1" -type f -name "*.txt" | while read -r file
do
  bak_file="${file%.txt}.bak"  
  cp "$file" "$bak_file"      
  replace_foo_with_bar "$bak_file"  
done