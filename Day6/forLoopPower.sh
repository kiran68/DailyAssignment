#!/bin/bash

n=$1

echo "Powers of 2 that are less than or equal to 2^n, where n=$n:"
echo "2^0 = 1"

for (( "i=1; i<=$n; i++" ))
do
    power=$((2**$i))
    echo "2^$i = $power"
done
