#!/bin/bash
~ '
    Title : Memory Usage Monitoring
    Author : Akshay Fasale
    Date : 23-08-2023
'

function mem_stats()
{
    echo "*********************************"
    echo "********* Memory Stats **********"
    echo "*********************************"
ps -eocomm,pmem | grep -E -v '(0.0)|(%MEM)'   >> "$1".txt
}
