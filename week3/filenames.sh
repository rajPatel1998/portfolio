#!/bin/bash
# Purpose: File/Directory check based on reading a txt document
# Author: Deep Patel 
# LastModified: 31/07/2021

#Loop through the contents of the file and check
if [ $1 ]; then
    for line in $(cat $1) 

    do
        if [ -f $line ]; then
            echo "$line - That file exists"
        elif [ -d $line ]; then
            echo "$line - That's a directory"
        else
            echo "$line - I don't know what that is!"
        fi 
    done
    exit 0
else
    echo "Please strart the program with command line parameters"
    exit 1
fi
