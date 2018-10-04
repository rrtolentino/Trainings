#!/bin/bash

# Shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option

read -p "Enter a name of a file or a directory: " USERINPUT

#Check the given input if its a file, directory, or other type
if [ -e $USERINPUT ]
then
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
fi


