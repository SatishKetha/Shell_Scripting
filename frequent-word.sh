#!/bin/bash
DIRECTORY=$1
MFW=$(tr -sc 'A-Za-z' '\n' < $DIRECTORY | sort | uniq -c | sort -n -r | head -1)

echo "Most frequently occuring word is: $MFW"