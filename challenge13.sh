#!/bin/bash
#Challenge 13
#Domain Analyzer



analyze () {
    whois $instring 
    dig $instring  
    host $instring  
    nslookup $instring 
}

echo Input domain name:
read instring
analyze > output.txt
echo Analysis written to output.text