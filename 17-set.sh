#!/bin/bash

set -e     # we dont need to write validation to check each and every command, if you write set -e, shell script will check every command manually.


failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND" ' ERR     # trap is syntax, err is signal, failure is a function, ${lineno} and "$bash_command" are inputs.

USERID=$(id -u)  #ERR

if [ $USERID -ne 0 ]    
then
    echo "please run this script with root access."
    exit 2       # manually exit if error comes.
else
    echo "you are super user."
fi

dnf install mysqluqywgsjq -y 
VALIDATE $? "Installing MYSQL"

dnf install git -y 
VALIDATE $? "Installing GIT"

dnf install docker -y 
VALIDATE $? "Installing DOCKER"
