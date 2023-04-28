#!/bin/bash

# Script Name:                  Hello World
# Author:                       David Siebert 
# Date of latest revision:      04/28/2023
# Purpose:                      Array

# Declaration of global variables
files+(f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

# Declaration of functions

var=5
echo $var

# Main
echo ${files[4]}
echo ${files[3]}
echo ${files[2]}
echo ${files[1]}
echo ${files[0]}

func    
# End
