#!/bin/bash
# Purpose: Regex patterns
# Author: Deep Patel 
# LastModified: 01/08/2021  

#grep looking for all lines that has sed statements
grep -r --exclude-dir=.git 'sed -.*' ../

#grep looking for all the lines that start with letter m
grep -r --exclude-dir=.git '^m' ../

#grep looking for all the lines that contains three digit numbers
grep -r -E --exclude-dir=.git '[0-9]{3}' ../

#grep looking for all the lines in the echo statements that contain atleast three words
grep -r -E --exclude-dir=.git 'echo.*"([A-Za-z]+\s){3}.*"' ../

#grep looking for words that can make a good password


#References
#exclude dir from grep = https://stackoverflow.com/questions/6565471/how-can-i-exclude-directories-from-grep-r