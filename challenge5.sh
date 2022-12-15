#!/bin/bash
#   stlouis-ops-201n3 Ops Challenge 5
#   Author: Joe Doyle
#Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#This loop will facilitate the menu system of your script, so that it can prompt the user to choose an option.
ps aux

P2=y

while  [ $P2 = y ]
do
    echo Enter PID to terminate:
    read P1  
    kill $P1
    echo $P1 Terminated
    echo Would you like to continue? Type "y" to continue, or anytthing else to quit.
    read $P2
done

echo Exit Successful