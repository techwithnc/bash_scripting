#!/bin/bash

#####################################################################################
###	    Author:		TechWithNC (www.youtube.com/@techwithnc)          ###
### 	    Date Created:	04/Jun/2023                                       ###
### 	    Last Modified:      04/Jun/2023                                       ###
### 	    Decription:		This script will search maximun and minimum       ###
###				numbers that you provided.			  ###
###	    Usges:		./max_min.sh                                      ###
#####################################################################################
echo
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "Hello  $USER ,the script will search maximum and minimum numbers."
echo
num_array=()
read -rp "Enter numbers separated by 'space' : " numbers
for num in ${numbers[@]}; do
   num_array+=("$num")
done
max_num=${num_array[0]}
min_num=${num_array[0]}

for i in "${num_array[@]}"; do
    if [[ "$i" -gt "$max_num" ]]; then
        max_num="$i"
    fi
    if [[ "$i" -lt "$min_num" ]]; then
        min_num="$i"
    fi
done

echo "Maximum number is: $max_num."
echo "Minimum numver is: $min_num."
echo "Total numbers that you enter is: ${#num_array[@]}."
echo
echo "~~~~~~~~~~~~~~~~~~~~~~   Thank You!   ~~~~~~~~~~~~~~~~~~~~~~" 
echo
