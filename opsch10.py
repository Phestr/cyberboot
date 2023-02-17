#!/usr/bin/env python3
# Author: Joe Doyle
# Ops 301 Challenge 10 : Python File Handling

# Create new .txt file
f = open("opsch10.txt", "x")
# append 3 lines to file
with open("opsch10.txt", "a") as f:
    l1 = "This is line 1\n"
    l2 = "This is line 2\n"
    l3 = "This is line 3"
f = open("opsch10.txt", "a")
f.writelines([l1, l2, l3])
# print to screen the first line
f = open("opsch10.txt", "r")
print(f.readline())
# delete the .txt file
import os
os.remove("opsch10.txt")