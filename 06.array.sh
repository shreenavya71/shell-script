#!/bin/bash

MOVIES={"hi nana" "RRR" "DJ tillu" "animal"}   # list of array

# size of above array is 4
# index are 0,1,2,3

# list always starts with 0

echo "first movie is : ${MOVIE[0]}"
echo "second movie is : ${MOVIE[1]}"
echo "third movie is : ${MOVIE[2]}"
echo "all movie are : ${MOVIE[@]}"  # @ means all 