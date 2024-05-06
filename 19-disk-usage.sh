#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5
MESSAGE=""

while IFS= read -r line            #IFS internal field separator, using line
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )    #6--6th row
    FOLDER=$(echo $line | awk -F " " '{print $NF}')        #N---last
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
         MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk usage alert"  nreddy12344@gmail.com

#echo "body"  | mail -s "subject" to-address