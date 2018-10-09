#!/bin/bash

# Write a shell script that loops through the /etc/passwd file one line at a time. Prepend each line with a line number followed by a colon and then a space.

LINENUM=1

while read LINE
do
   echo "${LINENUM}: $LINE"
   ((LINENUM++))
done < /etc/passwd
