#!/bin/bash
DIRECTORY=$1
INPUT=$(tr -sc 'A-Za-z' '\n' < $DIRECTORY | sort | uniq | sort)
echo "$INPUT"