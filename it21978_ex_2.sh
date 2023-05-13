#!/bin/bash

datetime=$(date "+%Y-%m-%d,+%H:%M")

sum_of_tcp_connections=$(ss -t | wc -l)

echo "$datetime $sum_of_tcp_connections"

echo "$datetime $sum_of_tcp_connections" >> ~/Desktop/tcp_connections