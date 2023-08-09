#!/bin/bash
DIRECTORY=$1
BEFORE=$2
AFTER=$3
sed '-s/$BEFORE/$AFTER/g' $1