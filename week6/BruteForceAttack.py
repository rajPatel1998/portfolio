#!/usr/bin/python3
# Purpose: Crack the password by brute force technique
# Author: Deep Patel 
# LastModified: 16/08/2021

import hashlib
import itertools

#This function imports in a tuple and returns a string by looping over each character inside a tuple 
def convertTupleToAString(tuple):
  stringValue = ""

  for value in tuple:
    stringValue = stringValue + value

  return stringValue

#hidden password hash to validate against a brute force attack
passwordHashToMatch = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

#An iterable tuple with characters
characters = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")

#Loop over 25 times
for i in range(1, 26):

    #Generate passwords with length of each value of i
    generatedPasswordsTuples = (itertools.product(characters, repeat = i))
    
    #loop over each password tuple and validate it against the hash
    for passwordTuple in generatedPasswordsTuples:

      #String password from the tuple
      password = convertTupleToAString(passwordTuple)
      #Crete a hash for the string password
      passwordHash = hashlib.sha256(password.encode("utf-8")).hexdigest()

      print(f"Trying password {password}:{passwordHash}")

      if(passwordHash == passwordHashToMatch):
        print(f"Password has been cracked! It was {password}")
        break

#References
# Copied from week 6.5 content
# Logic for creating passwords was taken from - https://www.instructables.com/Password-Brute-forcer-in-Python/