#!/usr/bin/bash

WRITEFILE=$1
WRITESTR=$2

if [ -z "$WRITEFILE" ] || [ -z "$WRITESTR" ]; then
  echo "Usage: writer.sh <file> <string>"
  exit 1
else
    mkdir -p $(dirname "$WRITEFILE")
    echo "$WRITESTR" > "$WRITEFILE"
    
    exit 0
fi