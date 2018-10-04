#!/bin/bash

# Shell script to check to see if the file "/etc/shadow" exists. If it does exist, display "Shadow passwords are enabled." Check if its writeable. If it is, display "You have permissions to edit /etc/shadow." If not, display "You do NOT have permissions to edit /etc/shadow."

if [ -e /etc/shadow ]
then
   echo "Shadow passwords are enabled."
   if [ -w /etc/shadow ]
   then
      echo "You have permission to edit /etc/shadow"
   else
      echo "You do NOT have permission to edit /etc/shadow"
   fi
else
   echo "/etc/shadow file does not exist"
fi


