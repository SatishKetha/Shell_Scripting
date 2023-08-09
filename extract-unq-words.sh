#!/bin/bash
DIRECTORY=$1
tr -sc 'A-Za-z' '\n' < $DIRECTORY | sort | uniq | sort -n

