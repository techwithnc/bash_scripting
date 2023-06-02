#!/bin/bash
#
# Author: TechWithNC
#
# Date Created: 2/Jun/2023
# Last Modified: 2/Jun/2023
#
# Decription.
# This script will collect employee information and saved to employee_info.scv file.
#
# Usges.
# ./employee_info.sh
#
echo "Hello, Welcome , this script will collect some information about employee ..."
PS3="What is the name of the city which employee  living? "
user_choose=yes
while [ "${user_choose}" == "yes" ]; do
  read -rp "Full name? : " name
  read -N 5 -rp "What is employee's code?(must be 5-digits) : " code
  echo
  read -rp "Job title? : " dob
  read -rp "Deparment? : " dept
  read -rp "Email address? : " email
  read -rp "Phone number? : " phone
  read -rp "Emergency contact name? : " econtact
  select city in Yangon Mandalay Taunggyi NayPyiTaw; do
  break
  done
  echo "${name},${dept},${email},${phone},${econtact},${dob},${code},${city}" >> employee_info.csv
  read -rp "Want to add another employee info? (yes/no) : " user_choose
done
echo "Thank you for choosing me, bye !!!!!"
