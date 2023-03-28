#!/bin/bash

if [ -z $1 ]; then
	echo "First argument is missing! Provide the SD Card Directory Path"
	exit 128
fi

TARGET_DIRECTORY=$1

SOURCE_DIRECTORY=rrf3.x

echo "COPYING TO: $TARGET_DIRECTORY"

directories=(gcodes macros sys)

for directory in "${directories[@]}";
do
	echo "Copying content to $TARGET_DIRECTORY/$directory"
	cp -rvp $SOURCE_DIRECTORY/$directory/* $TARGET_DIRECTORY/$directory
done
