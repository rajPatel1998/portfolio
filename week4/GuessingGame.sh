#!/bin/bash
# Purpose: Allow the user to guess the correct number
# Author: Deep Patel 
# LastModified: 02/08/2021

#This functions takes in three inputs and based on the conditions it will allow the user to enter a number until they guess it correctly
getNumber()
{
	#Prompt user to enter a value
	read -p "Guess a number between $1 and $2: "

	#While values are not in range then print error and prompt the user to enter again
	while (( $REPLY < $3 || $REPLY > $3 ));
	do
		#User didn't guess the correct answer, so display error message
		errorMessageSelector $1 $2 $REPLY $3
		read -p "Guess a number between $1 and $2: "
	done

	#User has guessed the correct number
	echo -e "\033[32mCorrect!\033[0m\n"
	echo "YOU HAVE GUESSED IT RIGHT!"
}

#This functions takes in four inputs and based on the condition it will print error message
# $1 = Minimum  number i.e. 1 in this case
# $2 = Maximum  number i.e. 100 in this case
# $3 = What user entered
# $4 = Correct value to guess for
errorMessageSelector() 
{
	if (( $3 < $1 || $3 > $2 )); then
		printError "Input must be between $1 and $2"
	elif (( $3 < $4 )); then
		printError "Too Low!"
	elif (( $3 > $4 )); then
		printError "Too High!"
	fi
}

printError() 
{
	echo -e "\033[31m$1\033[0m"
}

echo -e "Welcome to the guessing game...\n"

#Function call to getNumber
# Parameter 1 = Minimum number user can enter
# Parameter 2 = Maximum number user can enter
# Parameter 3 = Correct value to guess
getNumber 1 100 42

exit 0