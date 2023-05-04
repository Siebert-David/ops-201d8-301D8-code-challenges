#!/bin/bash

# Script Name:                  Systeminfo.sh
# Author:                       David Siebert 
# Date of latest revision:      03MAY2023
# Purpose:                      Uses grep lshw


# Declaration of variables

# Declaration of functions


# Main
# Print computer name
echo "Computer Name:"
sudo lshw -class system | head -n 1
echo "---------------"

# Print information
echo "CPU Information:"
sudo lshw | grep -A6 *-cpu

echo "RAM Information:"
sudo lshw | grep -A4 '*-memory' | grep -v 'slot'

echo "Adapter Information:"
sudo lshw | grep -A11 *-display | grep -v 'version' 

echo "Network Adapter Information:"
sudo lshw | grep -A15 *-network


# End