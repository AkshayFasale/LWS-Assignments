#!/bin/bash

#Shell script to restart the system if instance has been up for 2 weeks

uptime_seconds=$(cat /proc/uptime | awk -F'.' 'print $1')

max_uptime = 1209600

if [ "$uptime_seconds" -gt "$max_uptime" ]; then
    echo "System has been up for more than 2 weeks. Restarting..."
    sudo reboot
else
    echo "System uptime is within range."
fi