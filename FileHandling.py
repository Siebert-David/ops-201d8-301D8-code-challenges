
# Script Name:                  FileHandling.py
# Author:                       David Siebert 
# Date of latest revision:      21JUN2023
# Purpose:                      Python’s file handling capabilities to open and manipulate an existing file.

# Create a new .txt file, append three lines, print the first line, and delete the .txt file
def manipulate_file():
    # Create and open the file in write mode
    with open("sample.txt", "w") as file:
        # Append three lines to the file
        file.write("Line 1\n")
        file.write("Line 2\n")
        file.write("Line 3\n")
    
    # Open the file in read mode
    with open("sample.txt", "r") as file:
        # Read and print the first line
        first_line = file.readline()
        print("First line:", first_line)
    
    # Delete the file
    import os
    os.remove("sample.txt")

# Execute the file manipulation function
manipulate_file()

