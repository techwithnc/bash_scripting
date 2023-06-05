#!/bin/bash

#####################################################################################
###	    Author:		TechWithNC (www.youtube.com/@techwithnc)          ###
### 	    Date Created:	03/Jun/2023                                       ###
### 	    Last Modified:      05/Jun/2023                                       ###
### 	    Decription:		This script will update your linux system.        ###
###	    Usges:		./update.sh                                       ###
#####################################################################################
echo
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "Hello $USER, this script will update your linux system."
echo
os_type=/etc/os-release

if grep -q "Ubuntu" $os_type || grep -q "Debian" $os_type; then
  echo "Updating your Ubuntu OS."
  sudo apt update
  sudo apt -y dist-upgrade
elif grep -q "fedora" $os_type; then
  echo "Updating your fedora OS."
  sudo dnf -y update
elif grep -q "Red Hat" $os_type; then
  echo "Updating your Red Hat OS."
  sudo dnf -y update
fi

echo
echo "~~~~~~~~~~~~~~~~~~~~~~   Thank You!   ~~~~~~~~~~~~~~~~~~~~~~"
echo
