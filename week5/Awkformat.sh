#!/bin/bash
# Purpose: Display google servers information in a table format
# Author: Deep Patel 
# LastModified: 04/08/2021

echo "Google Server IPs:"

awk '
BEGIN { 
    FS=":";
    print "_____________________________";
    print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m |";
}
{
    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);
}
END {
    print("_______________________________");
}' Input.txt