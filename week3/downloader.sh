#!/bin/bash
# Purpose: Allows the user to dowload files and saves the output
# Author: Deep Patel
# Last Modified: 24/07/2021

#Variable tracking whether user wants to exit and quit the program
exit=false

#Loop until user wants to exit
until [ "$exit" = true ]
do
    echo "Please type the URL of a file to download or type 'exit' to quit"
    read url
    
    if [ "$url" = "exit" ]; then 
        exit=true
    else  
        echo "Please type the location of the file where you would like to save it"
        read outputLocation

        #If outputLocation is not empty then save the output to the specified directory or save in this current directory
        if [ $outputLocation ]; then
            wget -q $url -P $outputLocation
        else
            echo "Saving in this current directory..."
            wget -q $url
        fi    
    fi
done

echo "Bye!"

exit 0

#References
#Line 17 - Inspiration taken by reading man pages and through wget -h