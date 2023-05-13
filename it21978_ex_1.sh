#!/bin/bash

if [ ! -d $1 ]; 
then
	echo " Error Message : You did not provide a directory as an argument. Please try again!"	
	exit 1
fi


find $1 ! -path '*/.*' -type d  -empty -print 2>/dev/null
