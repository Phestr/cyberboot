#!/bin/bash
#Ops301 Challenge 4
#Create a bash script that launches a menu system with the following options:
#1. Hello world (prints “Hello world!” to the screen)
#2. Ping self (pings this computer’s loopback address)
#3. IP info (print the network adapter information for this computer)
#4. Exit
#Next, the user input should be requested.
#The program should next use a conditional statement to evaluate the user’s input, then act according to what the user selected.
#Use a loop to bring up the menu again after the request has been executed.
#Author: Joe Doyle

e=y
while [ $e = y ]
do
    echo "Make a selection"
    echo "1) Hello World!"
    echo "2) Ping Self"
    echo "3) List IP Info"
    echo "4) Exit"

    read  a

    if [ $a = 1 ]
        then echo "Hello World"
    elif [ $a = 2 ]
        then ping -c 3 127.0.0.1
    elif [ $a = 3 ]
        then ifconfig
    else [ $a = 4 ]
       exit
    fi

    echo "Do you want to go again? (y/n)"
    read e
done