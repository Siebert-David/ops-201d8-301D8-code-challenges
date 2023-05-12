#!/bin/bash

# Script Name:                  WhoIs
# Author:                       David Siebert 
# Date of latest revision:      05/12/2023
# Purpose:                      Who-Is command


echo "Enter domain name:"
read var1

whois $var1 >> DomainTxt.sh
dig $var1 >> DomainTxt.sh
host $var1 >> DomainTxt.sh
nslookup $var1 >> DomainTxt.sh

#end