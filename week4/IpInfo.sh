#!/bin/bash
# Purpose: Parsing and formatting the output from ifconfig to only display the addresses that are available on this computer
# Author: Deep Patel
# LastModified: 31/07/21

#Get info about networking from the ifconfig command
netInfo=$(ifconfig)

#Parse and format out the ip address lines using sed
addresses=$(echo "$netInfo" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address/
    p
    }')

#Output the available addresses that have been formatted
echo -e "The IP addresses on this computer are:\n$addresses"
