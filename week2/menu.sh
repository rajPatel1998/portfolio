#!/bin/bash

#execute the passwordCheck script
./passwordCheck.sh

#If access granted then display menu
if [ $? -eq 0 ]; then

    #display menu
    echo -e "1. Create a folder\n2. Copy a folder\n3. Set a password"
    read chosenOption
    
    #actions based on the users selection
    case $chosenOption in 

        1)
            ./foldermaker.sh
            ;;
        2)
            ./foldercopier.sh
            ;;
        3)
            ./setPassword.sh
            ;;
        *)
            echo "Please select a valid selection"
            ;;
    esac

    exit 0
fi
