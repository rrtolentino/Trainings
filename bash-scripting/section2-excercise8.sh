#!/bin/bash

# Script to accept an unlimited number of files and directories as arguments

# Check the given parameter is a file, directory, or other type
if [ $# -eq 0 ] 
then
   echo "No arguments provided"
   exit 1
else
   for USERINPUT in $@
   do
      echo 
      if [ -f $USERINPUT ]
      then
         echo "$USERINPUT is a regular file"
      elif [ -d $USERINPUT ]
      then
         echo "$USERINPUT is a directory"
      else
         echo "$USERINPUT is other type of a file"
      fi
      echo
      echo `ls -l "$USERINPUT"`
      echo
   done
fi


