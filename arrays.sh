#!/usr/bin/bash

MY_FIRST_ARRAY=(one two three four five)

# prints only the first element of the list
echo $MY_FIRST_ARRAY

echo ${MY_FIRST_ARRAY[2]}

# to print whole list
echo ${MY_FIRST_ARRAY[@]}

for item in ${MY_FIRST_ARRAY[@]}; do
	echo -n $item | wc -c;
done
