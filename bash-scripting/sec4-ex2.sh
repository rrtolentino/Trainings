#!/bin/bash

# Modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument. Next have the function display the name of the directory followed by a colon. Finally, display the number of files to the screen on the next line. Call the function three times. First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.

file_count() {
   local FILENUM=`cd $1 && ls | wc -w`
   echo "${1};"
   echo $FILENUM
   echo
}

for i in /etc /var /usr/bin; do file_count $i; done
