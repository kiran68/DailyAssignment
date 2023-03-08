
for i in {1..5}
do
 num=$((RANDOM % 90 + 10))
    echo "Number $i: $num"
    sum=$((sum + num))
done

avg=$(echo "scale=2;$sum/5" | bc)

echo "Sum: $sum"
echo "Average: $avg"

done
