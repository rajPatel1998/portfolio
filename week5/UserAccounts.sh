#!/bin/bash
# Purpose: Read /etc/passwd file and display information in a table format
# Author: Deep Patel 
# LastModified: 04/08/2021

awk '
#Column header function that takes in 5 inputs and prints the header
function printHeader(val1,val2,val3,val4,val5) {
    
    printf("| \033[34m%-20s\033[0m | \033[34m%-10s\033[0m | \033[34m%-10s\033[0m | \033[34m%-20s\033[0m | \033[34m%-20s\033[0m |\n", 
        val1, val2, val3, val4, val5);
}

#Function that draws horizontal line on the screen
function printHorizontalLine() {
    printf("|______________________|____________|____________|______________________|______________________|\n");
}

BEGIN {
    FS=":";

    printHeader("Username", "UserID", "GroupID", "Home", "Shell");
    printHeader("", "", "", "", "");
    printHorizontalLine();
       
}
/\/bin\/bash/ {
    printf("| \033[33m%-20s\033[0m | \033[35m%-10d\033[0m | \033[35m%-10d\033[0m | \033[35m%-20s\033[0m | \033[35m%-20s\033[0m |\n", 
    $1, $3, $4 , $6, $7);
}
END {
    printHorizontalLine();
}' /etc/passwd
