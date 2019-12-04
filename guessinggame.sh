#!/usr/bin/env bash
#guessinggame
actual_count=$(ls -1 | wc -l)

function guessit {        
    if [[ $1 -lt $2 ]]         
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    else
	echo ""
	echo "Congratualations! You guessed right!"
    fi
}

while [[ $actual_count -ne $guess_count ]]  
do
    read -p "Guess how many files are in the current directory? " guess_count
    # echo "You entered: $guess"
    echo $(guessit $guess_count $actual_count)
    echo ""
done