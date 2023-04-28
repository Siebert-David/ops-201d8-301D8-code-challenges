#!/bin/bash

# Script Name:                  Hello World
# Author:                       David Siebert 
# Date of latest revision:      04/29/2023
# Purpose:                      Array

# Declaration of global variables
dirArray=(dir1 dir2 dir3 dir4)


# Main
mkdir ${dirArray[0]}
mkdir ${dirArray[1]}
mkdir ${dirArray[2]}
mkdir ${dirArray[3]}

touch "${dirArray[0]}/test.txt"
touch "${dirArray[1]}/test.txt"
touch "${dirArray[2]}/test.txt"
touch "${dirArray[3]}/test.txt"

# End
