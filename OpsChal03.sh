#!/bin/bash
# Script: Ops 201 Class 03 Ops Challenge
# Author: Sam Allan
# Date of latest revision:2/18/2023
# Purpose: Print the login history of all users
echo 

function BridgeTroll {
    echo "halt, ye must solve my riddle to proceed. What has four legs in the morning, four in the afternoon, and four in the evening?"
    correct_answer="a horse of course"
    read yarrr
    if [ "$yarrr" == "$correct_answer" ]; then
        echo "arrr, you may cross"
        lastlog
    else
        echo "Begone! lest I throw ye oer' the bridge onto the craggy rocks below!"
    fi
}

BridgeTroll