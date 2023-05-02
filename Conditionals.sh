#!/bin/bash

# Script Name:                  Ops Challenge: Conditionals
# Author:                       David Siebert 
# Date of latest revision:      05/01/2023
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.

#!/bin/bash

# Array of file or directory names to create
files=(code.txt fellows.txt basher1 basher2)

# Loop through the array
for name in "${files[@]}"
do
  # Check if the file or directory already exists
  if [ ! -e "$name" ]
  then
    # If it doesn't exist, create it
    if [[ "$name" =~ .*\.txt$ ]]
    then
      touch "$name"
    else
      mkdir "$name"
    fi
    echo "Created $name"
  else
    echo "$name exists"
  fi
done