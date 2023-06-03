#!/bin/bash

# Script Name:                  Syslog.sh
# Author:                       David Siebert 
# Date of latest revision:      02JUN2023
# Purpose:                      System log Move/Copy

#cp /var/log/syslog .


current date=$(date +"%Y-%m-%d_%h-%M-%S)

cp /var/log/syslog "syslog_$(date +"%Y-%m-%d_%h-%M-%S")"

#echo "syslog copied to $(pwd)"