#!/usr/bin/env bash

# Display script name and current datetime

echo "Running script $0"
echo "Current datetime: $(date)"

# Ask for user input
read -p "Enter your name:"  username

echo "Hello $username, welcome to file ops"

# Create new directory with timestamp

timestamp=$(date +%Y%m%d_%H%M%S)
new_dir="my_file_$timestamp"
mkdir "$new_dir"
cd "$new_dir"
echo Creating several files
touch file1.txt file2.txt file3.txt
chmod 644 file1.txt
chmod 755 file2.txt

# Display file permissions
echo "File permissions"
ls -l

# Copy a file
cp file2.txt old_file2.txt

echo "alias list='ls -la'" >> some.rc
echo "Alias list added to some.rc Source this file to execute the alias"

echo "File directory structure:"

ls -R ../
cd ../
echo " Script execution summary:  "
echo " Num args: $#  "
echo " All args: $@  "
echo " Exit status of last command: $?  "
echo " Script execution completed!  "

