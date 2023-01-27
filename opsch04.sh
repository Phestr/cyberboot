#!/bin/bash
#Ops301 Challenge 4
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

    echo "Do you want to go again?"
    read e
done