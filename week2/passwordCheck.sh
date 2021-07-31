#!/bin/bash
# Purpose: Checks the password in the file
# Author: Deep Patel 
# LastModified: 31/07/2021

#file to check from
hashFile="secret.txt"

#read users password that needs to be checked
echo "Enter the secret password you want to check: " 
read -s enteredSecret

#storing the result of the check made against the file
checkResult=`echo $enteredSecret | sha256sum -c $hashFile`

if [ "$checkResult" == "-: OK" ]; then
    echo "Access Granted"
    exit 0
else
    echo "Access Denied"
    exit 1
fi
