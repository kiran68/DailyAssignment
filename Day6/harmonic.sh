#!/bin/bash
n=$1
harmonic=0

if (( n == 1 )); then
    harmonic=1
else
    for (( i=1; i<=n; i++ ))
    do
        harmonic=$(echo "scale=10; $harmonic + 1/$i" | bc)
    done
fi

echo "The $n-th harmonic number is $harmonic"
