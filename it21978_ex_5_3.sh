#!/bin/bash


log_file='apache.log.txt'

ips=$(awk '{print $1}' $log_file | sort | uniq -c | sort -nr | head )

list_of_ips=$(echo "$ips" | awk '{print $2}')


for i in ${list_of_ips[@]}; do
	countries=$(curl -s "https://ipapi.co/$i/country/") 
	echo "$i  →  ${countries[@]}"
done



