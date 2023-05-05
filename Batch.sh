#!/bin/bash

# Script Name:                  Batch.sh
# Author:                       David Siebert 
# Date of latest revision:      03MAY2023
# Purpose:                      Batch ( this is my test of concept. I dont know how to get this to run as I planned)


# Declaration of variables

# Declaration of functions
@echo off
set source=C:\Users\Jorge\Desktop\Work
set destination=D:\Backup\Jorge_Work

echo Copying files from %source% to %destination%...
echo.

robocopy "%source%" "%destination%" /e /np /log:"D:\Backup\Jorge_Work\Backup_Log.txt"

echo.
echo Backup completed successfully.
#end