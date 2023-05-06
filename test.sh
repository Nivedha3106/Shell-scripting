#!/bin/bash

sum=0
echo "Enter numbers separated by spaces:"
read -a numbers

for num in "${numbers[@]}"
do
  if (( num % 2 == 0 ))
  then
    sum=$((sum + num))
  fi
done

echo "Sum of even numbers is: $sum"
