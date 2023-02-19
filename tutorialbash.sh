#!/bin/bash

function WakeMeUp {
    echo "wake me up"
    goofy="wake me up inside"
    rungle="I cant wake up"
    
    read answer
    
    if [ "$answer" == "$goofy" ]; then
        bash tutorialbash.sh
    elif [ "$answer" == "$rungle" ]; then
        lastlog
    else
        echo "saaaave meeee"
    fi
}

WakeMeUp