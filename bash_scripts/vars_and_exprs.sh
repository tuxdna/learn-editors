#!/usr/bin/env bash

# Strings

name1="Alice"
name2=Bob

# Numbers
num1=5
num2=4

total=$((num1 + num2))

echo "Sum is $total"

# Single quotes
echo 'name1 is $name1'
# Double quotes
echo "name1 is $name1"


# Arrays

fruits=("apples", "bananas", "cherry")
echo "Third fruit is: ${fruits[2]}"

# Command Substitution

current_date=$(date +%Y-%m-%d)
echo "Today's date is $current_date"

# Using command substitution
echo "Today's date is $(date +%Y-%m-%d)"

# Using backticks
echo "Today's date is `date +%Y-%m-%d`"

# Special Variables

echo Scrit name is $0
echo First argument $1
echo Second argument $2
echo Number of arguments $#
echo All arguments $@
echo Exit status of last command $?
echo Process ID is $$


# Parameter expansion and substitution
name=""
v1="${name:-"Jason Bourne"}"
echo $v1
# Already initialized, will not get default
v1="${v1:-"Not this one"}"
echo $v1
# Substring ${varname:start_pos:num_chars}
echo "${v1:3:4}"
# Length of string
echo "${#v1}"

# Indirect reference
fruit="apple"
apple="red"

echo "Refer to variable pointed by contents of fruit: ${!fruit}"

# Associative arrays

declare -A fruits
fruits[apple]="red"
fruits[banana]="yellow"
fruits[grape]="purple"

# shall print red 
echo "Value at key 'banana' : ${fruits[banana]}"
# shall print all keys 
echo "Keys: ${!fruits[@]}"
# shall print all values 
echo "Values: ${fruits[@]}"

# Array slicing
numbers=(1 2 3 4 5 6)
echo "Slice of array from pos 1 and size 3: ${numbers[@]:1:3}"

# Brace Expansion
echo {1..5}
echo {a..e}
echo file{1,2,3}.txt

# Advance IO redirection

echo "Hello" > /dev/null 2>&1

cat << EOF > file.txt
Line 1
Line 2
EOF

while read line; do
	echo "Line: $line"
done < <(ls -l)

# Subshells and command grouping

( cd /tmp && ls )

pwd # Still in original directory

# Command group executes in current shell

# { cd /tmp && ls; pwd; cd - }

# Traps and Signals

cleanup() {
	echo "Cleanup function ..."
}

trap cleanup EXIT
trap 'echo "Interrupt received"'  INT

# Recursive functions

traverse() {

	for file in "$1"/* ; do
		if [ -d "$file" ]; then
			# Recursive call
			traverse "$file"
		else
			echo $file
		fi
	done
}


# Parsing CLI Args

while getopts ":a:b" opt; do
	case $opt in 
		a)
			echo "Option -a was provided. Value given $OPTARG" >&2
			;;
		b)
			echo "Option -b was provided. Value given $OPTARG" >&2
			;;
		?)
			echo "Invalid Option -$OPTARG" >&2
			;;
	esac
done



