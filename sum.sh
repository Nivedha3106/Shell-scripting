#! /bin/bash

#sum of all even numbers in the entered list

echo "Enter list of numbers separated by space: "
read -a num
count=${#num[@]}
echo "Count of the entered values is: $count"
sum=0 #Initialising sum value

for i in "${num[@]}"
do
 if (( i % 2 == 0 ))
 then 
   sum=$((sum+i))
 fi
done

echo "Sum of even numbers in the list is: $sum" 

