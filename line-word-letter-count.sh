#!/bin/bash

DIRECTORY=$1
echo "Lines: $(wc -l -w -c $1 | awk '{print $1 " " $2 " " $3}' | cut -d " " -f1)"

echo "Words: $(wc -l -w -c $1 | awk '{print $1 " " $2 " " $3}' | cut -d " " -f2)"

echo "Letters: $(wc -l -w -c $1 | awk '{print $1 " " $2 " " $3}' | cut -d " " -f3)"
