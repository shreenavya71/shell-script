#!/bin/bash

number=$1

if [ $number -gt 10 ]
then
    echo "Given Number $number is greater than 10"
else
    echo "Given Number $number is less than 10 "
fi


#-gt, -lt, -eq, -ge, -le, -ne-----------these are the some of the options greaterthan,lessthan,equal,greaterthanorequal,lessthenorequal,notequalto