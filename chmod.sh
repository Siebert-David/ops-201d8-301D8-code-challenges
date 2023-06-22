#!/bin/bash

# Script Name:                  CHMOD.sh
# Author:                       David Siebert 
# Date of latest revision:      21JUN2023
# Purpose:                      #Create a new bash script that performs the following:


# Declaration of variables
directory=""
permissions=""

# Declaration of functions
change_permissions() {
    # Navigate to the directory
    cd "$directory" || { echo "Directory not found"; exit 1; }

    # Change permissions of all files in the directory
    chmod -R "$permissions" *

    # Print directory contents and new permissions settings
    echo "Directory Contents:"
    ls -l
}

# Prompt user for input directory path
read -p "Enter directory path: " directory

# Prompt user for input permissions number
read -p "Enter permissions number (e.g. 777): " permissions

# Call the function to change permissions
change_permissions
