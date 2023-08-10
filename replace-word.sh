#!/bin/bash
DIRECTORY=$1
BEFORE=$2
AFTER=$3
sed -i 's/$2/$3/g' $1