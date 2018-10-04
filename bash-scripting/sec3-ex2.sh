#!/bin/bash

# Shell script that accepts a file or directory name as an argument. Have the script report if it is a regular file, a directory, or other type of file. If it is a regular file, exit with a 0 exit status. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

#Check the given parameter is a file, directory, or other type
if [ $# -eq 0 ] 
then
   echo "No arguments provided"
   exit 3
else
   if [ -f $1 ]
   then
      echo "$1 is a regular file"
      exit 0
   elif [ -d $1 ]
   then
      echo "$1 is a directory"
      exit 1
   else
      echo "$1 is other type of a file"
      exit 2
   fi
   echo
   echo `ls -l "$1"`
   echo
fi


