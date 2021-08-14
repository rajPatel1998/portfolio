#!/bin/bash
# Purpose: Regex patterns
# Author: Deep Patel 
# LastModified: 15/08/2021  

#grep looking for all lines that has sed statements
grep -r --exclude-dir=.git 'sed -.*' ../

#grep looking for all the lines that start with letter m
grep -r --exclude-dir=.git '^m' ../

#grep looking for all the lines that contains three digit numbers
grep -r -E --exclude-dir=.git '[0-9]{3}' ../

#grep looking for all the lines in the echo statements that contain atleast three words
grep -r -E --exclude-dir=.git 'echo.*"([A-Za-z]+\s){3}.*"' ../

#grep looking for words that can make a good password
#(?=.*[A-Z]) = Should contain a upper case character
#(?=.*[!@#$&]) = Should contain a special character
#(?=.*[a-z]) = Should contain a lower case character
#.{12,} = Should be minimum of 12 characters long
#This works on my visual studio code
#grep -r -E --exclude-dir=.git '^(?=.*[A-Z])(?=.*[!@#$&])(?=.*[a-z]).{12,}$'

#grep looking for passwords that can make a strong good password
#^[A-Z] Should start with uppercase character
#[A-Za-z1-9!@#$&] = Should contain either an upper case or lower case character or either a number
#.{11,} = Should be followed with minimum of 11 characters long
grep -r -E --exclude-dir=.git '^[A-Z][A-Za-z1-9!@#$]{11,}$'


#References
#exclude dir from grep = https://stackoverflow.com/questions/6565471/how-can-i-exclude-directories-from-grep-r
#regex for password = https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Assertions