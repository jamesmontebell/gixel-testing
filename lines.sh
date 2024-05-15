#!/bin/bash

# Define the file name
file="random_file.txt"

# Generate a random number of lines (between 1 and 10 in this example)
num_lines=$((1 + RANDOM % 10))

# Generate random lines and save them to the file
for ((i=1; i<=$num_lines; i++))
do
    # Generate a random line using /dev/urandom, tr, and base64
    random_line=$(head -c 30 /dev/urandom | tr -dc 'a-zA-Z0-9' | base64)

    # Append the random line to the file
    echo "$random_line" >> "$file"
done

echo "Random file '$file' created with $num_lines random lines."

