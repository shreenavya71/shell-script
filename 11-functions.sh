#!/bin/bash

USERID=$(id -u)  
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)         # 11-function.sh | 11-function
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]                             # here $1 takes the exit status of dnf instal mysql and git commands
    then 
        echo "$2......FAILURE"
        exit 1                                  #if $1 -ne 0, then you execute the commad to show failure  and comeout using exit 1 status. you can use any number in front of exit
    else
        echo "$2.......SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1 #manually exit if error comes.
else
    echo "you are super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"      # here we are calling validate function and sending 2 varables to it #1. $? exit status of previous command # 2. "installling mysql is a variable called $2"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing Git"