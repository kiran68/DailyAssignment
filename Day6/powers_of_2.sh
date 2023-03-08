number=$1
if (( number > 8 )); then
    number=8
fi

for (( i=0; i<=number; i++ ))
do
    power=$(( 2 ** i ))
    if (( power > 256 )); then
        break
    fi
    echo "2^$i = $power"
done
