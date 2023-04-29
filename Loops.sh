#!/bin/bash

# Script Name:                 Kill loop
# Author:                       david Siebert
# Date of latest revision:      04/29/2223
# Purpose:                      loop/kill

# Declaration of variables

# Declaration of functions

while true; do
  # display running processes
  echo "Currently running processes:"
  ps aux
  
  # ask user for PID to kill
  read -p "Enter PID to kill (or press Ctrl + C to exit): " pid
  
  
  # attempt to kill the process with the given PID
  echo "Attempting to kill PID $pid..."
  if kill $pid; then
    echo "Process killed successfully."
  else
    echo "Failed to kill PID $pid."
  fi
done

#End