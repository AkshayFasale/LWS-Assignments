#!/bin/bash

~ '
    Title : CPU Usage Monitoring
    Author : Akshay Fasale
    Date : 23-08-2023
'

function cpu_stats()
{
    echo "*********************************"
    echo "********* CPU Stats **********"
    echo "*********************************"
    ps -eocomm,pcpu | grep -E -v '(0.0)|(%CPU)' >> "$1".txt
}


# ps -eocomm,pcpu | grep -E -v '(0.0))'


# what is -E and -v

~ '
-E
The -E option enables the use of extended regular expressions in the search pattern.
This means that you can use metacharacters like +, ?, {}, etc.,
to specify patterns more flexibly.

-v
The -v option, on the other hand,
is used to invert the matching.
It displays all lines that do not match the specified pattern.
'
