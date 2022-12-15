#!/bin/bash

#while loop


counter="20"

while  [ $counter -gt 0 ]
do
    echo $counter
    ((counter--))
done

echo Lift off!