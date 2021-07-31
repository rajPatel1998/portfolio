#!/bin/bash
# Purpose: Allows the user to run different scripts from the menu
# Author: Deep Patel
# Last Modified: 24/07/2021

#execute the passwordCheck script
./passwordCheck.sh

#If access granted then display menu
if [ $? -eq 0 ]; then

    #Variable tracking whether user wants to exit from the menu
    exit=false

    until [ "$exit" = true ] 
    do
        #display menu
        echo -e "\033[34mSelect an option"
        echo -e "\033[36m1. Create a folder\n2. Copy a folder\n3. Set a password"
        echo -e "4. Calculator\n5. Create Week Folders\n6. Check Filenames\n7. Download a File\e[0m"
        echo -e "8. Exit"

        read chosenOption
        
        #actions based on the users selection
        case $chosenOption in 

            1)
                ./../week2/foldermaker.sh
                ;;
            2)
                ./../week2/foldercopier.sh
                ;;
            3)
                ./setPassword.sh
                ;;
            4)
                ./calculator.sh
                ;;
            5)
                ./megafoldermaker.sh
                ;;
            6)
                ./filenames.sh filenames.txt
                ;;
            7)
                ./downloader.sh
                ;;
            8)
                exit=true
                ;;
            *)
                echo "Exiting the program due to invalid selection"
                ;;
        esac
    done

    exit 0
fi
