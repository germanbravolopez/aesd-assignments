#!/bin/sh
# Assignment 1
# Author: German Bravo Lopez

usage() { echo "Usage: $0 <filesdir> <searchstr>"; exit 1; }

if [ $# -ne 2 ]; then
    usage
fi

# parse arguments
filedir=$1
searchstr=$2

# error if filedir is not a directory
if [ ! -d ${filedir} ]; then
     usage
fi

files_in_dir=$(ls ${filedir} | wc -l)
matching_lines=$(grep -r "${searchstr}" ${filedir}| wc -l)

echo "The number of files are ${files_in_dir} and the number of matching lines are ${matching_lines}"
