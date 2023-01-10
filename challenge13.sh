#!/bin/bash
#Challenge 13
#Domain Analyzer

analyze () {
    whois $instring >> output.txt
    dig $instring >> output.txt
    host $instring >> output.txt
    nslookup $instring >> output.txt
}

echo Input domain name:
read instring
analyze $instring
echo Analysis written to output.text