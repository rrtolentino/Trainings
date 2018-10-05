#!/bin/bash

# Write a shell script that renames all files in the current directory that end in ".jpg" to begin with today's date in the following format: YYYY­MM­DD. Make sure to gracefully handle instances where there are no ".jpg" files in the current directory.

if [ `ls *jpg | wc -w` -ne 0 ]
then
   for i in *.jpg
   do
      echo "Renaming $i to `date +%F`.$i"
      mv $i `date +%F`-$i
   done
else
   echo "No JPG files found"
fi
