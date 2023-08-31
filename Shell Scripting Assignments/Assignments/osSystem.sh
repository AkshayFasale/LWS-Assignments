#!/bin/bash

: "
Shell script to find the Linux Operating system
"

: "
case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;; 
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  msys*)    echo "WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac
"

# Returns information about the type of OS running on the machine, eg.
#echo $OSTYPE
#read -p "OS type is $OSTYPE"

os_name=$(uname -s) # -s   Write the name of the operating system implementation to standard output.
os_release=$(uname -r) #-r      Write the current release level of the operating system to standard output.

echo "Operating system Name is $os_name"
echo "Kernel Release is $os_release"

# use man uname to get more information