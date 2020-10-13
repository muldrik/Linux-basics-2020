#!/bin/bash
start=$1
end=$2
createFile="1"
flag="0"
last="0"
isHash="1"
a=$(git log --pretty=%H%n%B)
while IFS= read -r line ; 
do

if [ "$last" = "1" ] && [ "$line" = "" ];
then
flag="0"
fi

if [ "$line" = "$start" ] || [ "$flag" = "1" ];
then
if [ "$isHash" = "0" ]; then

	if [ "$createFile" = "1" ]; then
		echo "$line" > release-notes.md
		createFile="0"
	else
		echo "$line" >> release-notes.md
	fi
fi

flag="1"
fi

if [ "$line" = "$end" ];
then
last="1"
fi

if [ "$line" = "" ];
then
isHash="1"
else
isHash="0"
fi

done <<< "$a"
