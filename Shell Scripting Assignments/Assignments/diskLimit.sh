#!/bin/bash

disk_limit = 75

disk_usage=$(df -h | awk 'NR == 2 {print $5}' | cut -d% -f1)

if [ "$disk_usage" -gt "$disk_limit" ]; then
    subject="Disk Usage Alert"
    message="Disk usage is currently at $disk_usage% which is above the threshold of $disk_limit%."
    echo "$message" | mail -s "$subject" souravk326@gmail.com
else
    # Disk usage is within limits
    echo "Disk usage is within acceptable range."
fi

echo $disk_usage