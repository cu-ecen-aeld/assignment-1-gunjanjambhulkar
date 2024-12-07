#!/bin/bash

# check for the args are passed

if [ $# -ne 2 ]; then
	echo "Error: Two args are required: <file path>, <write string>"
       exit 1
fi

writefile=$1
writestr=$2

# create directories if they dont exist

mkdir -p "$(dirname "$writefile")"

# write the string to the file

echo "$writestr" > "$writefile" || {
	echo "Couldnt write to file"
	exit 1
}

exit 0
