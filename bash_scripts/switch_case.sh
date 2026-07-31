#!/usr/bin/env bash

echo "Welcome to interactive world"

while true; do
	read -p '
Please choose n option:
1. Say hello
2. Check date
3. List files
4. Clear the screen
5. Guess the number game
6. Exit

Enter your choice: ' choice

	case $choice in
		1)
			echo "Hi, nice to meet you!"
			;;
		2)
			echo "Today's date is: $(date)"
			;;
		3)
			echo "The files in the current directory are:"
			ls -l
			;;
		4)
			clear
			echo "Screen cleared"
			;;
		5)
			secret_number=$(( RANDOM % 10 + 1 ))
			# echo "secret_number=$secret_number"
			read -p "Guess the number: " your_guess
			while [ "$your_guess" -ne "$secret_number" ]; do
				# echo "your_guess=$your_guess"
				if [ "$your_guess" -lt "$secret_number" ]; then
					echo "Try a bigger number"
				elif [ "$your_guess" -gt "$secret_number" ]; then
					echo "Try a smaller number"
				else
					echo "This can't happen"
				fi
				read -p "Guess the number: " your_guess
			done
			echo "You guessed it right!"

			;;
		6)
			echo "Thank you for using interactive menu"
			break
			;;
		*)
			echo "Invalid input: $choice. Try again."
			;;
	esac

	echo # Print a blank line
done

echo "Bye!"

