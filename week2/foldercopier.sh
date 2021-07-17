#!/bin/bash

read -p "Type the name of the folder you would like to copy: " folderName

#if the name is valid and directory exists
if [ -d "$folderName" ]; then
	#copy the folder to a new location
	read -p "Type the name of the destination folder: " newFolderName
	cp -r "$folderName" "$newFolderName"
else
	#could not find the folder you want to copy
	echo "I could not find that folder"
fi

exit 0
