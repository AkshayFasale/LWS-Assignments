#!bin/bash

: '
    this line should be added in .sh file it tells 
    the kernel the name of interpreter that should be used 
    to execute the script that follows
    '

# this is used to comment line and : '' this is used for multi line comment

# To taKe input from user
#read -p "Enter your first name : " firstname
#echo $firstname

#echo "My name is $firstname"

# if else loop in shell scripting

read -p "Enter your Name : " name

if [[ $name == "Akshay" ]]; then
    echo "Hi $name"
elif [[ $name == "Aditi" ]]; then
    echo "Hello $name"
else
    echo "Not valid option..! BYE"
fi


# Declaring predefined variables and user defined variables
echo Our shell name is : $BASH
echo Our shell version name is : $BASH_VERSION
echo Our home directory is : $HOME
echo Our current directory is : $PWD


read -p "My surname is : " surname
echo My Full name is $name $surname

