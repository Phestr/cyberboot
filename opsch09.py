#!/usr/bin/env python3
# Author: Joe Doyle
# Ops 301 Challenge 9 : Python Conditionals

print ("Determine yor fortune based on Numerology!")

# define variables
a = input("Enter a number for variable 'a': ")
b = input("Enter a number for variable 'b': ")

# Conditional statements

# equal
if a == b:
    print("Your geatest battle will be for equality.")

# not equal
if a != b:
    print("You will have success in your endeavors.")

# less than
if a < b:
    print("You will uplift those who are subordinate to you.")

# less than or equal
if a <= b:
    print("You will be admired by those that look up to you.")

# greater than
if a > b:
    print("Those you look up to will foster your growth.")

# greater than or equal
if a >= b:
    print("You will have happiness in your household.")

# if/else statement

if a < b:
    print("You are a bit of an underacheiver, you should have more confidence.")
else:
    print("You are a bit of an overacheiver, you should have more humility.")

# if/elif/else statement

c = input("Are you happy with your fortune? (Y/N)  ")
if c == "Y":
    print("Many blessings upon you!")
elif c == "y":
    print("Many blessings upon you!")
elif c == "N":
    print("You should try again!")
elif c == "n":
    print("You should try again!")
else:
    print("You should try harder to follow directions!")

