#!/bin/bash

#####################################################################################
###	    Author:		TechWithNC (www.youtube.com/@techwithnc)          ###
### 	    Date Created:	03/Jun/2023                                       ###
### 	    Last Modified:      04/Jun/2023                                       ###
### 	    Decription:		This script will backup directory that you given. ###
###	    Usges:		./backup.sh                                       ###
#####################################################################################

echo "Hello there, ${USER^}"

read -rp "Enter the full path that you want to backup. :" path

current_dir=$(pwd)

echo "I will save backup file in ${current_dir}"

tar -zcf "${current_dir}/bk_$(date +%d-%m-%Y).tar.gz" -C "${path}" . 2>/dev/null

echo "Backup completed successfully."

exit 0

