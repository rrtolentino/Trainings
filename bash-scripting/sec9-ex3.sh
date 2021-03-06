#!/bin/bash

# Write a shell script that that allows a user to select an action from the menu. The actions are to show the disk usage, show the uptime on the system, and show the users that are logged into the system. Tell the user to enter q to quit. Display "Goodbye!" just before the script exits.
# If the user enters anything other than 1,2,3,or q,tell them that it is an "Invalid option."

command_execute() {
   $1
   read -p "Press any key to continue" ANYKEY
   echo ""
}

while true
do
   clear
   echo "1. Show disk usage."
   echo "2. Show system uptime."
   echo "3. Show the users logged into the system."
   read -p "What would you like to do? (Enter q to quit.)  " USERINPUT
  
   case $USERINPUT in
      1)
         command_execute df
         ;;
      2)
         command_execute uptime
         ;;
      3)
         command_execute who
         ;;
      q|Q)
         echo "Goodbye!"
         break
         ;;
      *)
         echo "Invalid option"
         sleep 2
         ;;
   esac
done
