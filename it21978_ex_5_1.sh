#!/bin/bash


log_file='apache.log.txt'

awk '{print $1}' $log_file | sort | uniq -c | sort -nr | head 
