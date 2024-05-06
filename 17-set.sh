#!/bin/bash

set -e     # we dont need to write validation to check each and every command, if you write set -e, shell script will check every command manually.


USERID=$(id -u)

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
