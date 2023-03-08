#!/bin/bash

declare -a months=( '' 'January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December' )

declare -a birthdays=()

for i in {1..50}; do
  year=$(( RANDOM % 2 + 1992 ))
  month=$(( RANDOM % 12 + 1 ))
  day=$(( RANDOM % 28 + 1 ))
  birthday=$(printf "%02d-%02d-%04d" "$day" "$month" "$year")
  birthdays+=("$birthday")
done

echo "Birthdays:"
for birthday in "${birthdays[@]}"; do
  echo "$birthday"
done

echo "Same month birthdays:"
for month in {1..12}; do
  count=0
  for birthday in "${birthdays[@]}"; do
    if [[ "${birthday:3:2}" == "$month" ]]; then
      count=$(( count + 1 ))
    fi
  done
  if (( count > 1 )); then
    echo "${months[$month]}: $count"
  fi
done
