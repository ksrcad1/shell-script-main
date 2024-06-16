#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)  # storing the basic command output in variables
DISK_THRESHOLD=6 # cutoff limit decided by user. 
MESSAGE=""

while IFS= read -r line # iterarte over the lines and get required info.
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 ) # $6f -> 6th field.
    FOLDER=$(echo $line | awk -F " " '{print $NF}')  # last field.
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi   # mesggae= message + current line text., append new value to old value.
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" info@joindevops.com

# echo "body" | mail -s "subject" to-address