#!/bin/bash
file=$1
longest=""
for word in $(cat $1)
do
    if [ ${#word} -gt ${#longest} ]; then
        longest=$word
    fi
done
echo ${longest}