#!/bin/bash

# Shell script that accepts the file or directory name as an argument instead of prompting the user to enter it

#Check the given parameter is a file, directory, or other type
if [ $# -eq 0 ] 
then
   echo "No arguments provided"
   exit 1
else
   echo 
   if [ -f $1 ]
   then
      echo "$1 is a regular file"
   elif [ -d $1 ]
   then
      echo "$1 is a directory"
   else
      echo "$1 is other type of a file"
   fi
   echo
   echo `ls -l "$1"`
   echo
fi


