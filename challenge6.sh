#!/bin/bash

# Ops Challenge Class 6 - Conditionals
# Author:   Joe Doyle
# Create a script that detects if a file or directory exists, then creates it if it does not exist.

loop=y

while [ $loop = y ]
    do
        echo Enter file to check:
        read file
            if test $file
            then
                echo File exists.
            else
                touch $file
                echo File did not exist, so I made one
            fi

        echo Do you want to check another? Type "y" for yes, any other to quit.
        read loop
    done