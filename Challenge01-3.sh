#!/bin/bash
#Ops Challenge 301-1
#Author: Joe Doyle
now=$(date "+%Y-%m-%d-%H-%M-%S")
filename="syslog_$now.log"
cp /var/log/syslog "$filename"
