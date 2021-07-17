#!/bin/bash

#Don't tell anyone!
secret='shhh' 

#if the user types in the correct secret, tell them they got it right!
read -s -p "what's the secret code?"
echo

if [ "$secret" = "$REPLY" ]; then

    echo "You got it right!"
    correct=true

else     
    echo "You got it wrong :("
    correct=false

fi

case $correct in

true)
    #TODO: add a secret menu for people in the know.
    echo "you have unlocked the secret menu!"
    ;;

*)
    #people who get it wrong need to be told to go away!
    echo "Go Away!" 
    ;;

esac