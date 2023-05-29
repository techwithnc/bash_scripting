###################################################
###     TechWithNC                              ###
###     https://github.com/techwithnc           ###
###     https://www.youtube.com/@techwithnc     ###
###################################################

#!/bin/bash
echo "Welcome! This script will check number is even or odd."
read -p "What is your name? : " NAME
USER_INPUT=y
while [[ $USER_INPUT = y ]]; do
read -p "Enter number : " VAR
   if [[ $VAR =~ ^[0-9]+$ ]];then
        if [ $(($VAR % 2)) -eq 0 ]; then 
            echo "Hello! $NAME , The number you enter is Even!"
        else
            echo "Hello! $NAME , The number you enter is Odd!"
        fi
   else
      echo "Please enter only numerical value"
   fi
read -p "Want to try agin? (y/n) : " USER_INPUT
done
echo "Thank you for using me , bye!!!"