#!/bin/bash
DIRECTORY=/home/ec2-user/logs
DATE=$(date +%F)
LOGFILE="$DATE.log"
#deleting files older than 2 weeks
INPUT=$(find $DIRECTORY -name "*.log" -type f -mtime +14)
while IFS= read line;
do
    echo "Deleting log file: $line" &>> $LOGFILE
    rm -rf $line
done <<< "$INPUT"



