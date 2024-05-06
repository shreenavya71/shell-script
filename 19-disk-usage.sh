#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5

while IFS read -r line            #IFS internal field separator, using line
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )    #6--6th row
    FOLDER=$(echo $line | awk -F " " '{print $NF}')        #N---last
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
         echo "$FOLDER is more than $DISK_THRESHOLD, current usage: $USAGE"
    fi
do <<< $DISK_USAGE