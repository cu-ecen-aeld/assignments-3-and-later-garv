#!/usr/bin/bash

FILESDIR=$1
SEARCHSTR=$2

if [ -z "$FILESDIR" ] || [ -z "$SEARCHSTR" ]; then
  echo "Usage: finder.sh <directory> <search string>"
  exit 1
elif [ ! -d "$FILESDIR" ]; then
    echo "Error: $FILESDIR is not a directory"
    exit 1
else
    X=$(ls "$FILESDIR" | wc -l)
    Y=$(grep -r "$SEARCHSTR" "$FILESDIR" | wc -l)
    
    printf "The number of files are %d and the number of matching lines are %d\n" $X $Y
    
    exit 0
fi