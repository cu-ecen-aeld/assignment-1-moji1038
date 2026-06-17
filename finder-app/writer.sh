#!/bin/sh

if [ $# -ne 2 ]; then
   echo "Error: Two arguments required"
   exit 1
fi

writefile=$1
writeStr=$2
writeDir=$(dirname "$writefile")

mkdir -p "$writeDir"
echo "$writeStr"> "$writefile"
