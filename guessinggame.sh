#!/bin/bash
echo "Start of guessing game"

# Function to get the number of files in the current directory
get_file_count() {
    local count=$(ls -A | wc -l)
    echo $count
}

# Function to prompt the user for a guess
get_user_guess() {
    read -p "Guess how many files are in the current directory: " guess
    echo $guess
}

# Main loop
while true; do
    file_count=$(get_file_count)
    user_guess=$(get_user_guess)

    if [[ $user_guess -eq $file_count ]]; then
        echo "Congratulations! Your guess is correct."
        break
    elif [[ $user_guess -lt $file_count ]]; then
        echo "Your guess was too low. Try again."
    else
        echo "Your guess was too high. Try again."
    fi
done
