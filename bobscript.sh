#!/bin/bash
# Bob is back at it again! Now he needs us to script something that if user inserts between two to 5, it will print out “Valid Number” and “your number is ___”.
# And if the user input is not between 2 and 5, it will print out “not valid!”

function valid (){
if  [ "$VAR" -ge 2 ] && [ "$VAR" -le 5 ]
then
    echo Valid number
    echo Your number is $VAR
  
else
    echo "not valid!"

fi
}

echo Input a number
read VAR
valid
