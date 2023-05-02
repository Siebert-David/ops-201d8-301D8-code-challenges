#!/bin/bash

# Script Name:                 Kill loop
# Author:                       david Siebert
# Date of latest revision:     05/01/2023
# Purpose:                      loop/kill

# Declaration of variables

# Declaration of variables


# Declaration of functions


# Main
echo "-----------------------------------------------------------------------------------"
echo exit with Ctrl+C
echo "-----------------------------------------------------------------------------------"

while :
do
echo "Displaying running processes:"
echo "-------------------------------"
ps -au

echo Enter a PID you want to kill: 
read user_input

kill -9 $user_input
echo PID $user_input was killed
echo "-------------------------------"
done

# End