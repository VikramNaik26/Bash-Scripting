#!/usr/bin/bash

if [ ${1,,} = vikram ]; then
	# {1,,} here 1 is the 1st positional arguement and ,, indicate that ingnore the case of the word and is known as parameter expansion
	echo "Oh, you are the boss here, Welcome!"
elif [ ${1,,} = help ]; then
	echo "Just enter your username, duh!"
else
	echo "I don't know who you are?"
fi
# fi closes the block of if statement
