#!/bin/bash
# Purpose: A calculator which takes in two numbers and does calculations based on users choice
# Author: Deep Patel 
# LastModified: 31/07/2021

#Get user to enter the two numbers
read -p "Enter number one: " numOne
read -p "Enter number two: " numTwo

#Display menu to the user and get users selection
echo "What would you like to do with these two numbers. Please select an option"
echo -e "1.Add\n2.Subtract\n3.Multiply\n4.Divide"

read chosenMenuOption

#Conditional logic executing based on user's choice
case ${chosenMenuOption} in

    1)
        res=`echo $numOne + $numTwo | bc`
        echo -e "Result: \033[34m"${res}"\e[0m"
        ;;
    2)
        res=`echo $numOne - $numTwo | bc`
        echo -e "Result: \033[32m"${res}"\e[0m"
        ;;
    3)
        res=`echo $numOne \* $numTwo | bc`
        echo -e "Result: \033[31m"${res}"\e[0m"
        ;;
    4)
        res=`echo "scale=2; $numOne / $numTwo" | bc`
        echo -e "Result: \033[35m"${res}"\e[0m"
        ;;
    *)
        echo "Exiting.... correct option not chosen :("
        ;;
esac
