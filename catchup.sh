#!/bin/bash
# Create a script that ask the user for a number between 1 and 10.  Have the script tell the user if there
# number is greater than 5, less than 5, or equal to 5.  Please use an if/else or elif statement to make this happen.
# Also put the if/else statemnt inside a function.
# -eq = equal
# -ne = are not equal
# -gt = greater than
# -ge = greater or equal to
# -lt = less than
# -le = less than or equal to
# >= (Greater than or equal to)
# <= (Less than or equalk to)
# > (Greater)
# < (Less)
# == (comparison)
# % (Remainder)
# * (Multiply)
#Here are some helpful commands to make this happen.

function fives (){
if [[ $VAR -ge 2 && -le 5 ]]
then
  echo Valid number
  
  break
else "Not a valid number.  Try again"
then
  echo Your number is less than 5
else
  echo Your number is 5
fi

}

echo -n "Enter a number between 1 and 10 : "
read VAR

fives
