#!/bin/bash

log_file='apache.log.txt'

cat $log_file | cut -d'"' -f2 | awk '{print $1 " " $2}' | cut -d? -f1 | sort | uniq -c | sort -nr | head -n 20 
