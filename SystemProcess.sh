#!/bin/bash

# Script Name:                  SystemProcess.sh
# Author:                       David Siebert 
# Date of latest revision:      05MAY2023
# Purpose:                      Analyze, initialize, and terminate processes (programs) using Powershell commands. 

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending

# Print to the terminal all active processes ordered by highest Process Identification Number (PID)
Get-Process | Sort-Object -Property ID -Descending

# Print to the terminal the top five active processes ordered by highest Working Set (WS(K))
Get-Process | Select-Object -Property Name, WorkingSet -First 5 | Sort-Object -Property WorkingSet -Descending

# Start a browser process and open a URL
Start-Process "chrome.exe" "https://owasp.org/www-project-top-ten/"
# or just in case style points
Start-Process "msedge.exe" "https://owasp.org/www-project-top-ten/"

# Start Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad.exe"
}

# Close all instances of Notepad
Get-Process | Where-Object { $_.ProcessName -eq "notepad" } | Stop-Process

# Kill a process by its Process Identification Number (PID)
$processId = Read-Host "Enter the Process ID to kill"
Get-Process -Id $processId | Stop-Process

#end
