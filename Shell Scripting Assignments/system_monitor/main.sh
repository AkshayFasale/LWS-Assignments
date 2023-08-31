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
source file_operation.sh
echo "Today is `date`"

source email.sh

count=1
while [[ $count -gt 0 ]]
do

echo "
Select your choice

1. CPU Statistics - Type cpu|1
2. Memory Statistics - Type mem|2
3. For All Details - Type All | all | 3
0. Exit
"
read -rp "Enter your choice : " choice
read -rp "Enter output file name : " output_file

create_file "$output_file"

case $choice in
  
    cpu|CPU|Cpu|cPu|cpu|1)
        cpu_stats "$output_file"
        ;;
    mem|2)
        mem_stats "$output_file"
        ;;
    All|all|3) 
        cpu_stats "$output_file"
        mem_stats "$output_file"
        ;;
    4|None|none)
        ;;
    0) exit 0
        ;;
        
    *)
        echo "Please enter valid input"
        exit 1
esac
count=$((count-1))
echo $count
done

cupsfilter "$output_file".txt > "$output_file".pdf

# send email
read -rp "Enter sender Email address : " sender
read -rp "Enter receiver Email address : " receiver
read -rp "Enter Gmail Password : " gmailapp_password
read -rp "Enter Email subject : " subject

send_email "$sender" "$receiver" "$gmailapp_password" "$subject" "$output_file".pdf
list_files_directories
#remove file
remove_file "$output_file".*


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