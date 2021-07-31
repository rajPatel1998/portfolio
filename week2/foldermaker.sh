#!/bin/bash
# Purpose: Creates a new folder based on the entered name
# Author: Deep Patel 
# LastModified: 31/07/2021

read -p "Type the name of the folder you want to create: " folderName
mkdir "$folderName"
exit 0
