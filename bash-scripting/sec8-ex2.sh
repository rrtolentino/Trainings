#!/bin/bash

# script so that it uses a logging function. Additionally tag each syslog message with "randomly" and include the process ID. Generate 3 random numbers.

logit() {
   NUMBER=`echo $RANDOM`
   logger -s -i -t "randomly" -p user.info "Generated random number is $NUMBER"
}

COUNTER=0
while [  $COUNTER -lt 3 ]; do
   logit
   ((COUNTER++))
done
