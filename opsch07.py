
# Ops301 Challenge 7
# Import libraries


import os

# Declaration of variables

### Read user input here into a variable

directory_path = input("Please input file path:\n")

### Declare a function here

def dir_walk():
    for (root, dirs, files) in os.walk(directory_path):
        ### Add a print command here to print ==root==
        print(root)
        ### Add a print command here to print ==dirs==
        print(dirs)
        ### Add a print command here to print ==files==
        print(files)

# Main

### Pass the variable into the function here
dir_walk()
