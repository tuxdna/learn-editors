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

