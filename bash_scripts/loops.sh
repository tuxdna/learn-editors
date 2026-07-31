#!/usr/bin/env bash

for color in red green blue yellow
do
	echo "Favourite color is ${color}"
done

for number in {1..5}
do
	echo "Number is ${number}"
done


count=1
while [ $count -le 5 ]; do
	count=$((count + 1))
	if [ "$((count % 2))" = 1 ]; then
		echo "while: Count is $count"
	else
		echo "continue while loop"
		continue
	fi
done


count=1
until [ $count -gt 5 ]; do
	count=$((count + 1))
	echo "until: Count is $count"

	if [ "$((count % 2))" = 0 ]; then
		echo "until: Count is $count"
	else
		echo "Break out of until loop"
		break
	fi
done
