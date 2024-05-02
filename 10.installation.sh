#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run this script with root access."
else
    echo "you are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql-----n FAILURE"
    exit 1
else
    echo "installation of mysql------SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "installation of git ----------FAILURE"
    exit 1
else
    echo "installation of git  ---------- SUCESS"
fi

echo "is scripting proceeding"