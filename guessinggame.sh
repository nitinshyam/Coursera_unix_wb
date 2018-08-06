#!/usr/bin/env bash
# File: guessinggame.sh

function guess {
echo "How many files are in the current directory"
echo "make a guess"
read no_of_files
}
guess
while [[ $no_of_files -ne $( ls -l | wc -l ) ]]
do
	#  if no_of_files (guess) is correct the while statement is not executed
	if [[ $no_of_files -lt $( ls -l | wc -l ) ]]
	then
		
		echo "the guess was too low"
	else [[ $no_of_files -gt $(ls -l | wc -l ) ]]
		echo "the guess is too high"
	fi
	guess
# if the guess is not equal to no of files in current directory the if or else statement get executed
# after which user is again prompted ro make a guess
done

echo "you made the right guess" 
echo "Thanks!! "
