#!/bin/bash

number=$1
factorial=1

for (( i=1; i<=number; i++ ))
do
    factorial=$(( factorial * i ))
done

echo "$number factorial is $factorial"
