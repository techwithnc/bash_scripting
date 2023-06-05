#!/bin/bash

#####################################################################################
###	    Author:		TechWithNC (www.youtube.com/@techwithnc)          ###
### 	    Date Created:	04/Jun/2023                                       ###
### 	    Last Modified:      05/Jun/2023                                       ###
### 	    Decription:		This script can search file,directory and command.###
###	    Usges:		./search.sh                                       ###
#####################################################################################
echo
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo "Hello  $USER ,the script can search file,directory and command are exist or not on this system.."
echo
file_search(){
  echo
  read -rp "Please enter full path and file name. " user_file
  echo
  if [ -f "${user_file}" ]; then
    echo "File is already exist on the system."
  else
    echo "File is not exist on the system."
    read -rp "Do you want to create it?(yes/no) : " yorn
    if [ "${yorn}" == "yes" ]; then
      sudo touch "${user_file}"
      echo '--------------------------'
      echo "${user_file} is created."
    fi
  fi
}
dir_search(){
  echo
  read -rp "Please enter full path and directory name. " user_dir
  echo
  if [ -d "${user_dir}" ]; then
    echo "Directory is already exist on the system."
  else
    echo 'Directory is not exist on the system.'
    read -rp "Do you want to create it?(yes/no) : " yorn
    if [ "${yorn}" == "yes" ]; then
      sudo mkdir "${user_dir}"
      echo '--------------------------'
      echo "${user_dir} is created."
    fi
  fi
}
command_search(){
  echo
  read -rp "Please enter the command name." user_command
  echo
  if command -v "${user_command}"; then
    echo "${user_command} is avariable.. you can use it."
  else
    echo "${user_command} is not avariable."
    read -rp "Do you want to install it?(yes/no) : " yorn
    if [ "${yorn}" == "yes" ]; then
      sudo apt-get update > /dev/null
      sudo apt-get install -y "${user_command}" > /dev/null
      echo '--------------------------'
      echo "${user_command} is installed."
    fi
  fi
}
PS3="What do you want to search? : "
select user_input in Directory File Command; do
	echo "OK, you want to search ${user_input}."
	break
done

case "${user_input}" in
  File) file_search ;;
  Directory) dir_search ;;
  Command) command_search ;;
esac

echo
echo "~~~~~~~~~~~~~~~~~~~~~~   Thank You!   ~~~~~~~~~~~~~~~~~~~~~~"
echo
