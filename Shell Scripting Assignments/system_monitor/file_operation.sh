#!/bin/bash

~ '
    Title : File operation Monitoring
    Author : Akshay Fasale
    Date : 31-08-2023
'

function create_file {
    touch $1
}


function list_files_directories {
    echo "....................."
    echo "List of files and directories"

    ls -al
}

function check_file_present {
    ls -al $1
}

function remove_file {
    rm -rf "$1"
}