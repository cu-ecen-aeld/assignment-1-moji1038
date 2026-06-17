#!/bin/sh

if [ $# -ne 2 ]; then
   echo "ERROR: Two arguments required"
   exit 1
fi

filesDir=$1
searchStr=$2

if [ ! -d "$filesDir" ]; then
   echo "ERROR: $filesDir is not a directory"
   exit 1
fi

numfiles=$(find "$filesDir" -type f | wc -l)
nummatches=$(grep -r "$searchStr" "$filesDir" 2>/dev/null | wc -l)

echo "The number of files are ${numfiles} and the number of matching lines are ${nummatches}"
