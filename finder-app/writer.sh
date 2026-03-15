#!/bin/sh
# Assignment 1
# Author: German Bravo Lopez

usage() { echo "Usage: $0 <writefile> <writestr>"; exit 1; }

if [ $# -ne 2 ]; then
    usage
fi

# parse arguments
writefile=$1
writestr=$2

# error if writefile is a directory
if [ -d ${writefile} ]; then
    usage
fi

mkdir -p $(dirname ${writefile}) && touch ${writefile}

echo "${writestr}" > ${writefile}

echo "File ${writefile} is writen with '${writestr}'"
