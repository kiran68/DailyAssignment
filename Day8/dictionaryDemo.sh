declare -A sounds

sounds[dog]="Bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound" ${sounds[dog]}
echo "All Animal Sounds" ${sounds[@]}
echo "Animal keys" ${!sounds[@]}
echo "Number of Animals" ${#sounds[@]}
