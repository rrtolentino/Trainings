#!/bin/bash

# Write a shell script that asks the user for the number of lines they would like to display from the /etc/passwd file and display those lines.

read -p "How many lines of /etc/passwd would you like to see?  " LINECTR

LINENUM=0

while read LINE
do
   if [ $LINENUM -lt $LINECTR ]
   then 
      echo "$LINE"
      ((LINENUM++))
   else
      break
   fi
done < /etc/passwd
