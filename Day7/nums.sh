#!/bin/bash

# Generate an array of integers
nums=(-1 0 1 2 -1 -4)

echo "Input array: ${nums[@]}"

# Find all triplets whose sum is zero
for (( i=0; i<${#nums[@]}-2; i++ )); do
  for (( j=i+1; j<${#nums[@]}-1; j++ )); do
    for (( k=j+1; k<${#nums[@]}; k++ )); do
      if (( ${nums[i]} + ${nums[j]} + ${nums[k]} == 0 )); then
        echo "Triplet found: ${nums[i]} ${nums[j]} ${nums[k]}"
      fi
    done
  done
done
