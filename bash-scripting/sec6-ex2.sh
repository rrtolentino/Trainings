#!/bin/bash

# Write a script that renames files based on the file extension. The script should prompt the user for a file extension. Next, it should ask the user what prefix to prepend to the file name(s). By default the prefix should be the current date in YYYY­MM­DD format. So, if the user simply presses enter the date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, it should display the original file name and the new name of the file. Finally, it should rename the file.
CURRDATE=`date +%F`

rename_file() {
   for i in *.$EXTINPUT
   do
      echo "Renaming $i to $1-$i"
      mv $i $1.$i
   done
}

read -p "Please enter file extension (ex: jpg txt): " EXTINPUT
if [ `ls *.$EXTINPUT | wc -w` -ne 0 ]
then
   read -p "Please input prefix to prepend the files: " PREFIX
   if [ -z $PREFIX ]
   then
      echo "Prefixing with date YYYY­MM­DD instead"
      rename_file $CURRDATE
   else
      echo "Prefixing files with $PREFIX"
      rename_file $PREFIX
   fi
else
   echo "No files with $EXTINPUT found!"
fi
