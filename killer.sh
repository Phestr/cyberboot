#!/bin/bash
#   stlouis-ops-201n3 Ops Challenge 5
#   Author: Joe Doyle
#Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#This loop will facilitate the menu system of your script, so that it can prompt the user to choose an option.
ps -aux

echo Enter PID to terminate or 0 to quit:
read P1

while  [ $P1 -gt 0 ]
do
    kill -09 $P1
    echo $P1 Terminated
done

echo Killer Complete