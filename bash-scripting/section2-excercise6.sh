#!/bin/bash

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


