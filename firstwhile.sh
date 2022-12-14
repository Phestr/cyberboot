#!/bin/bash
#   stlouis-ops-201n3 Ops Challenge 5
#   Author: Joe Doyle
#while loop


counter="20"

while  [ $counter -gt 0 ]
do
    echo $counter
    ((counter--))
done

echo Lift off!