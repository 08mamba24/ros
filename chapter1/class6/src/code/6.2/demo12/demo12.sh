#! /bin/bash

echo "enter 1st string"
read st1
echo "enter 2nd string"
read st2

if [ "$st1" \< "$st2" ]
then
	echo "$st1 is smaller than $st2"
elif [ "$st1" \> "$st2" ]
then
	echo "$st1 is larger than $st2"
else
	echo "$st1 is equal to $st2"
fi
	

