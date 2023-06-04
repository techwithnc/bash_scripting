#!/bin/bash

#####################################################################################
###	    Author:		TechWithNC (www.youtube.com/@techwithnc)          ###
### 	    Date Created:	04/Jun/2023                                       ###
### 	    Last Modified:      04/Jun/2023                                       ###
### 	    Decription:		This script will calculate your age and print     ###
### 				birthday wish if current date is your birthday.   ###
###	    Usges:		./age_calculator.sh                               ###
#####################################################################################

read -rp "What is your name?: " name
read -rp "Enter your birth year.(e.g: 1991) : " year
read -rp "Enter your birth month.(e.g: 04) : " month
read -rp "Enter your birth day.(e.g: 01) : " day

yearnow=$(date '+%Y')
monthnow=$(date '+%m')
daynow=$(date +'%d')

agey=$(echo "$yearnow - $year" | bc)
agem=$(echo "$monthnow - $month" | bc)
aged=$(echo "$daynow - $day" | bc)

check_birthday(){
  if [ "$daynow" == "$day" ] && [ "$monthnow" == "$month" ]; then
    echo
    echo '##################################################'
    echo "###   Happy Birthday !!!  $name! :)"
    echo '##################################################'
    echo
  fi
}
age_cal01(){
   aged=$(echo "$daynow" - "$day" + 30 |bc)
   agem=$(echo "$agem - 1" | bc)
   if [ "$agem" -lt 0 ]; then
     agem=$((agem+12))
     agey=$((agey-1))
   fi
}
age_cal02(){
   agem=$((agem+12))
   agey=$((agey-1))
}

if [ "$aged" -lt 0 ] ; then
  age_cal01
elif [ "$agem" -lt 0 ]; then
  age_cal02
fi

echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "Hello $name ,you are $agey years and $agem months $aged days old!"

check_birthday

