#!/bin/bash


if [ ! -d $1 ]; 
then
	echo "Error Message : You did not provide a directory as an argument. Please try again!"	
	exit 1
fi



file -b $1/* | awk '{print $1,$2}' | sort | uniq -c | sort -nr