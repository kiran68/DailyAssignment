#!/bin/bash

# Generate 10 random 3-digit numbers
for i in {1..10}; do
  rand=$(( RANDOM % 900 + 100 ))
  nums+=("$rand")
done

echo "Random numbers: ${nums[@]}"

# Find the 2nd largest and 2nd smallest elements
largest=${nums[0]}
second_largest=${nums[0]}
smallest=${nums[0]}
second_smallest=${nums[0]}

for num in "${nums[@]}"; do
  if (( num > largest )); then
    second_largest=$largest
    largest=$num
  elif (( num > second_largest && num != largest )); then
    second_largest=$num
  fi

  if (( num < smallest )); then
    second_smallest=$smallest
    smallest=$num
  elif (( num < second_smallest && num != smallest )); then
    second_smallest=$num
  fi
done

echo "Second largest: $second_largest"
echo "Second smallest: $second_smallest"
