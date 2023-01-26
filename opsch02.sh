#!/bin/bash
#Ops Challenge 301-2
#Author: Joe Doyle
echo "Input a file name"
ls
read file
echo "Input Permissions Number"
read perm
chmod $perm $file
echo "Permissions changed successfully for $file"
ls -l $file