#!/bin/bash
#Author: Samuel Allan
#Date of last modification: 2/25/2023
#Purpose: Write a script that displays running processes, asks the user for a PID, then kills the process with that PID. Use a loop in your script.
#variables: yoohoo, killit

yoohoo="yes"
#MAIN
#list running processes
ps aux
echo "these are the running processes"
#prompting the user for the PID and storing the input in a variable called killit
read -p "what PID would you like me to kill" killit
# checks if the input is a running PID
if ps -p $killit > /dev/null; then
    while [[ "$yoohoo" =~ ^([yY][eE][sS]|[yY])$ ]]; do
#kill the program
    kill $killit
#wanna do it again? stores input in the variable yoohoo
    read -p "PID Terminated. Any more boss? (y/n)" yoohoo
#if yes, starts over from the prompt for the PID
        if [[ "$yoohoo" =~ ^([yY][eE][sS]|[yY])$ ]]; then
            read -p "what PID would you like me to kill" killit
        fi
    done
#but otherwise...
else
    echo "sorry, can't do a thing with that. Try again"
fi
echo "ok boys, lets pack it out. Our work here is done."
#END
