#!/bin/bash

#variable declaration   passing the variable values outside the script is called arguments/parameters
PERSON1=$1
PERSON2=$2

#referring the variable
echo "$PERSON1:: hello $PERSON2, how are you?"
echo "$PERSON2:: hi $PERSON1 i am fine how are you?"
echo "$PERSON1:: i am fine too, thanks for asking. how is your work going?"
echo "$PERSON2:: not bad, i am thinking to upgrade to devops"