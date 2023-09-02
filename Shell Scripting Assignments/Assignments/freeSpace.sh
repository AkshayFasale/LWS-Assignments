#!/bin/bash

#Shell script to get total, free and available memory

total_memory=$(sysctl -n hw.memsize)
echo "Total Memory: $((total_memory / 1024 / 1024)) MB"

free_memory=$(vm_stat | awk '/Pages free/ {print $3 * 4096}')
echo "Free Memory: $((free_memory / 1024 / 1024)) MB"

available_memory=$(vm_stat | awk '/Pages free/ {free_pages=$3} /Pages speculative/ {speculative_pages=$3} /Pages inactive/ {inactive_pages=$3} /Pages wired down/ {wired_pages=$4} END {print (free_pages + speculative_pages + inactive_pages) * 4096}')
echo "Available Memory: $((available_memory / 1024 / 1024)) MB"

: '

total_memory=$(free -g | awk '/Mem:/ {print $2}')

free_memory=$(free -g | awk '/Mem:/ {print $4}')

available_memory=$(free -g | awk '/Mem:/ {print $7}')

echo "Total Memory: $total_memory MB"
echo "Free Memory: $free_memory MB"
echo "Available Memory: $available_memory MB"
'

# free_memory=$(free -g | awk '/Mem:/ {print $4}')

# available_memory=$(free -g | awk '/Mem:/ {print $7}')

# echo "Total Memory: $total_memory MB"
# echo "Free Memory: $free_memory MB"
# echo "Available Memory: $available_memory MB"