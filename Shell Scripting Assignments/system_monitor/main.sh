#!/bin/bash
~ '
    Author : Akshay Fasale
    Date : 23-08-2023
'

echo "Hostname is $HOSTNAME"
echo "..................................."
echo "******** This is CPU Usage ********"
echo "..................................."

source cpu_usage.sh

echo "..................................."
echo "******** This is Memory Usage ********"
echo "..................................."

source memory_usage.sh


echo "
    Select your choice
    1. CPU Statistics - Type cpu|1
    2. Memory Statistics - Type mem|2
    0. Exit
"
read -p "Enter your choice : " choice
# echo "If you want cpu stats then enter cpu " 
# echo "If you want mem stats then enter mem " 



case $choice in
  
    cpu|CPU|Cpu|cPu|cpu|1) cpu_stats
        ;;
    mem|2) mem_stats
        ;;
    0) exit 0
        ;;
        
    *)
        echo "Please enter valid input"
        exit 1
esac

: "
if [[$choice == "cpu"]]
then
    cpu_usage

elif [[$choice == "mem"]] 
then
    mem_stats

else
    echo "please enter correct input"
    exit 1
fi
"