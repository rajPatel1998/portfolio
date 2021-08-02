#!/bin/bash
# Purpose: Filter Ip Address from IpInfo and display them to the user
# Author: Deep Patel 
# LastModified: 31/07/2021

#Execute the IpInfo.sh file and store the result in a variable
ipConfigInfo=$(./IpInfo.sh)

#Filter the output from IpInfo.sh to only have Ip Address
ipAddressesOnly=$(echo "$ipConfigInfo" | sed -n '/IP Address/ { p }')

#Output Ip Addresses only
echo -e "The IP Addresses are:\n$ipAddressesOnly"
