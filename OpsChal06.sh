#!/bin/bash
#Author: Sam Allan
#Date of last revision: 3/1/2023
#Purpose: Create a script that detects if a file or directory exists, then creates it if it does not exist. Your script must use at least one array, one loop, and one conditional.

#variables: input, input2, var1, var2
#arrays: options

options=( 1 2 3 )

#MAIN
echo "1) file"
echo "2) directory"
echo "3) nevermind"
#asking what to look for
read -p "what would you like me to look up?" input
#if the input is not on the list, repeat the question
while [[ $input -gt 3 ]]; do
    read -p "sorry, please select an option from the selections listed above" input
done
while [[ $input -lt 1 ]]; do
    read -p "sorry, please select an option from the selections listed above" input
done
#if the input is option 1, ask what file to look for
if [[ $input -eq ${options[0]} ]]; then
    read -p "ok, what file do you want me to look up?" var1
    #if it is an existing file, notify the user
    if test -f "$var1"; then
        echo "this file exists"
    #if it is not, ask if the user would like to create the file
    else
        read -p "sorry, that's not a file. would you like to make it a file? (y/n)" input2
        #again, if it's not an option, repeat the question
        while [[ $input2 != "y" && $input2 != "n" ]]; do
            echo "answer unrecognized, please try again"
            read input2
        done
        #if yes, create file
        if [[ $input2 == "y" ]]; then
            touch "$var1".txt
            sleep 1
            echo "file created as a .txt! you can modify and save it as whatever you'd like later"
        #if no, exit program
        elif [[ $input2 == "n" ]]; then
            echo "ok, goodbye!"
            sleep 2
        fi
    fi
    #ask what directory to look for
elif [[ $input -eq ${options[1]} ]]; then
    read -p "ok, what directory would you like me to look up?" var2
    #if the directory exists, notify user
    if test -d "$var2"; then
        echo "this directory exists"
    #if not, ask the user if they would like to create directory
    else
        read -p "sorry, that's not a directory. would you like to make it a directory? (y/n)" input2
        #if not y or n, repeat question
        while [[ $input2 != "y" && $input2 != "n" ]]; do
            echo "answer unrecognized, please try again"
            read input2
        done
        #if input is yes, create directory
        if [[ $input2 == "y" ]]; then
            mkdir "$var2"
            sleep 1
            echo "directory created"
        #if no, say goodbye
        elif [[ $input2 == "n" ]]; then
            echo "ok, goodbye!"
            sleep 2
        fi
    fi
    #if they selected exit at the beginning, exit
elif [[ $input -eq ${options[2]} ]]; then
    echo "ok, bye!"
    sleep 2
fi