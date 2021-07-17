#!/bin/bash

# Filename to save the secret passwor to
fileName='secret.txt'

echo "Enter folder name you would like to create"
read folderName
echo "Enter a secret password"
read -s secretPassword
echo $secretPassword | sha256sum > $fileName
exit 0
