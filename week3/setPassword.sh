#!/bin/bash
# Purpose: Set hashed password to the file
# Author: Deep Patel 
# LastModified: 31/07/2021

# Filename to save the secret passwor to
fileName='secret.txt'

echo "Enter folder name you would like to create"
read folderName
echo "Enter a secret password"
read -s secretPassword
echo $secretPassword | sha256sum > $fileName
exit 0

#References
#File copied from week2