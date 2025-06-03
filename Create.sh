#!/bin/bash

# Prompt the user to enter a directory name
read -p "Enter the name of the submissions directory: " dir_name

# Define file names
file1="$dir_name/submission1.txt"
file2="$dir_name/submission2.txt"

# Check if a file (not a directory) exists with the same name as dir_name
if [ -f "$dir_name" ]; then
    echo "Error: There is a file named '$dir_name'"
    exit 1
fi

# Check if the directory already exists
if [ -d "$dir_name" ]; then
    echo "Directory '$dir_name' already exists."

else
    # Create the directory
    echo "Creating directory '$dir_name'..."
    mkdir "$dir_name"
fi

# Create the two files inside the directory
echo "Creating files '$file1' and '$file2'..."
touch "$file1" "$file2"

echo "Setup complete!"
