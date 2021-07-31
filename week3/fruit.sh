#!/bin/bash
# Purpose: Prints fruits names from the array
# Author: Deep Patel 
# LastModified: 31/07/2021

#Array of fruits
fruits=("Apple" "Mango" "Strawberry" "Orange" "Banana")

#loop through the fruits array and print the name
for i in ${fruits[@]}

do
    echo "FRUIT: $i"
done

exit 0
