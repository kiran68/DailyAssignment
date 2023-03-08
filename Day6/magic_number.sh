echo "Think of a number between 1 and 100."
read -p "Press enter to continue."
low=1
high=100
guess=0

while (( guess != low ))
do
    guess=$(( (low + high) / 2 ))
    read -p "Is your number less than $guess? (y/n) " answer
    if [[ $answer == "y" ]]; then
        high=$(( guess - 1 ))
    else
        low=$(( guess ))
    fi
done

echo "Your magic number is $guess!"
