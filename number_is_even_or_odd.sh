#!/bin/bash

#####################################################################################
###	    Author:		TechWithNC (www.youtube.com/@techwithnc)          ###
### 	    Date Created:	29/May/2023                                       ###
### 	    Last Modified:	03/Jun/2023                                       ###
### 	    Decription:		This script will check number is even or odd      ###
###	    Usges:		./number_is_even_or_odd.sh                        ###
#####################################################################################

echo "Welcome! This script will check number is even or odd."

read -p "What is your name? : " NAME

USER_INPUT=y

while [[ $USER_INPUT = y ]]; do
read -rp "Enter number : " VAR
   if [[ $VAR =~ ^[0-9]+$ ]];then
        if [ $(($VAR % 2)) -eq 0 ]; then 
            echo "Hello! $NAME , The number you enter is Even!"
        else
            echo "Hello! $NAME , The number you enter is Odd!"
        fi
   else
      echo "Please enter only numerical value"
   fi

read -rp "Want to try again? (y/n) : " USER_INPUT
done

echo "Thank you for using me , bye!!!"
