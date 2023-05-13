#!/bin/bash

if [ $# -lt 3 ]; 
then
	echo "Error Message : You must give me at least 2 numbers, so I can sort them in the right way. Please try again!"
	exit 1
fi

arrangement=$1

shift

numbers=($@)


for i in ${numbers[@]}; do
    if ! [[ $i =~ ^[0-9]+$ ]]; then
        echo "Error: All arguments must be numbers. Please try again!"
        exit 1
    fi
done


if [ "$arrangement" == "dec" ]; 
then
	numbers=($(echo "${numbers[@]}" | tr " " "\n" | sort -nr))
	echo "${numbers[@]}" | tr " " "\n"

elif [ "$arrangement" == "incr" ]; 
then
	numbers=($(echo "${numbers[@]}" | tr " " "\n" | sort -n))
	echo "${numbers[@]}" | tr " " "\n"
	
else
	echo "Please try again. State the arrangement and give at least 2 numbers"
fi	