#!/usr/bin/env bash

# multi-line commands using HEREDOC syntax
: << 'EOF'
File tests

-f file: file exits and is a regular file
-d file: file exits and is a directory
-r file: file exits and is readable

EOF


# multi-line commands using no-op command and single-quotes 
: '
String tests:
-z string: string is empty
-n string: string is not empty
string = string: if both are equal
string != string: both are not equal

Numeric comparison

num1 -eq num2: both num1 and num2 are equal
num1 -ne num2: num1 and num2 are not equal
num1 -lt num2: num1 < num2
num1 -le num2: num1 <= num2
num1 -gt num2: num1 > num2
num1 -ge num2: num1 >= num2


'

if [ -f "example.txt" ]
then
	echo "File exists"
else
	echo "File doesn't exits"
fi


read -p "Enter a number:" num

if [ "$num" -gt 0 ]; then
	echo "$num is positive"
elif [ "$num" -lt 0 ]; then
	echo "$num is negative"
else
	echo "$num is zero"
fi

 

read -p "Enter your age:" age

if [ "$age" -ge 18 ] && [ "$age" -le 65 ]; then
	echo "You are of working age"
else
	echo "You are either too young or of retirement age"
fi

 

