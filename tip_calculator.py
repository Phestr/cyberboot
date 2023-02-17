#!/usr/bin/env python3
# Author: Joe Doyle
# Day 2 - Tip Calculator

print("Welcome to the tip calculator.")
total_bill = float(input("What is the total bill? $"))
tip = (int(input("What percentage tip would you like to leave? (number only) ")) / 100)
split = int(input("How many people to split the bill? "))
bill_tip = (total_bill * (1 + tip))
each_bill = bill_tip / split
bill = "{:.2f}".format(each_bill)
print(f"Each person should pay: ${bill}")