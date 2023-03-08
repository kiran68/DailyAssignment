#!/bin/bash

declare -A rolls=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

while true; do
  roll=$(( RANDOM % 6 + 1 ))
  echo "Rolled: $roll"
  rolls["$roll"]=$(( rolls["$roll"] + 1 ))
  if (( rolls["$roll"] == 10 )); then
    break
  fi
done

echo "Results:"
for num in "${!rolls[@]}"; do
  count=${rolls["$num"]}
  echo "$num: $count"
done

max_num=1
min_num=1
for num in "${!rolls[@]}"; do
  if (( rolls["$num"] > rolls["$max_num"] )); then
    max_num=$num
  fi
  if (( rolls["$num"] < rolls["$min_num"] )); then
    min_num=$num
  fi
done

echo "Max: $max_num (${rolls[$max_num]} times)"
echo "Min: $min_num (${rolls[$min_num]} times)"
