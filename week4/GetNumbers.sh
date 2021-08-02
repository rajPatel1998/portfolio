#!/bin/bash
# Purpose: Get values in range
# Author: Deep Patel 
# LastModified: 31/07/2021

printError() 
{
	echo -e "\033[31mERROR:\033[0m $1"
}

getNumber()
{
	#Prompt user to enter a value
	read -p "$1: "

	#While values are not in range then print error and prompt the user to enter again
	while (( $REPLY < $2 || $REPLY > $3 ));
	do
		printError "Input must be between $2 and $3"
		read -p "$1: "
	done
}

echo "This is the start of the script"

#Function call to getNumber
getNumber "please type a number between 1 and 10" 1 10
echo "Thank you"

#Function call to getNumber
getNumber "please type a number between 50 and 100" 50 100
echo "Thank you"

exit 0