#!/usr/bin/env bash

set -x 


cleanup() {
	echo "Cleanup up temporary files..."
	echo "Dry run rm tmp_file.txt"
}

trap cleanup EXIT

function greet {
	local name="Bob"
	echo "Hello $name!"
}

greet

echo "Outside the function, name=$name"


name=User
say_hello() {
	echo "Hello $name!"
	echo "Argument1: $1!"
}

echo Lets call the function
say_hello
say_hello John

# A function returns value in three ways
# 1 - stdout
# 2 - using named refence to passed variables and setting value to those variables
# 3 - exit code using return statement, this is checked using $? after function call
#

## 1 - stdout example

add_numbers_v1() {
	# using output redirection to stderr, we can avoid control the return value
	echo "We will compute sum of $1 and $2" >&2
	echo $(( $1 + $2 ))
}
echo "V1: The sum is $(add_numbers_v1 4 5)"

## 2 - named ref to arguments
add_numbers_v2() {
	local n1=$1
	local n2=$2
	local -n output=$3
	output=$(( $n1 + $n2 ))
}
add_numbers_v2 9 5 result
echo "V2: The sum is $result"

## 3 - return exit code
check_file() {
	if [ -f "$1" ]; then
		return 0
	else
		return 1
	fi
}
echo "Checking if config.txt exists"
check_file "config.txt"
status=$?
echo "Exit status was $status"

