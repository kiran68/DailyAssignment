#!/bin/bash
start=$1
end=$2
for (( number=start; number<=end; number++ ))
do
    is_prime=1

    if (( number < 2 )); then
        is_prime=0
    else
        for (( i=2; i<=number/2; i++ ))
        do
            if (( number % i == 0 )); then
                is_prime=0
                break
            fi
        done
    fi

    if (( is_prime == 1 )); then
        echo "$number is a prime number"
    fi
done
