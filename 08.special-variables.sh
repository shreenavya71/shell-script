#!/bin/bash

echo "all variables: $@"    #  $@--will print all the variables
echo "number of variables passed: $#"   # will print the number of variables passed
echo "script name is : $0"      # $0 will give you the script name
echo "current working directory name: $PWD"    # $PWD will give you the current working directory
echo "home directory of current user: $HOME"
echo "which user is running the script: $USER"
echo "hostname: $HOSTNAME"
echo "process Id of the current shell script: $$"
sleep 60 &
echo "process ID of last background command: $!"