#!/bin/bash
DIRECTORY=$1
BEFORE=$2
AFTER=$3
sed '-s/$2/$3/g' $1