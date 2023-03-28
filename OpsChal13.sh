#!/bin/bash
# Script: Ops 201n3 Ops Challenge 13
# Author: Samuel Allan
# Date of last revision: 03/27/2023
# Purpose: use whois, dig, host, and nslookup to examine user input string and output to text file
# Variables: v1, storing user input


# MAIN:
read -p "what would you like me to look up?" v1
function bungus {
    if curl -s $v1 >/dev/null
    then
        whois $v1 > output13.txt
        dig $v1 >> output13.txt
        host $v1 >> output13.txt
        nslookup $v1 >> output13.txt
    else
        echo "the input is not a valid url or IP, or may be offline."
    fi
}

bungus

# END: