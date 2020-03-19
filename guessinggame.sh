#!/usr/bin/env bash
# File name: guessinggame.sh

echo "Start program"

echo "Guess how many files are in  the directory?"
echo " Please enter only positive integer numbers !!! "
read value
echo "you entered:  $value"

function get_number {
	local number=$(ls -1 | wc -l)
	echo $number
}

file_count=$(get_number)

if test $value -eq $file_count
then
	echo "Congratulation!"
	echo "End program"
else
	while test $value != $file_count
	do
		if test $value -gt $file_count
		then
			echo "This value is too high! "
		else
			test $value -lt $file_count
			echo "This value is too low!"
		fi
		echo "Please, enter another value: "
		read value
	done
echo "Congratulations! "
echo "End program "
fi


