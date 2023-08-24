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
echo $OSTYPE
read -p "OS type is $OSTYPE"