
# Ops301 Challenge 7
# Import libraries

import os

### Read user input here into a variable

my_dir = input("Please input file path: ")

def dir_walk():

    print("***********Print Start***********")

    for (root_dir_path, sub_dirs, files) in os.walk(my_dir):
        ### Add a print command here to print ==root==
        print(root_dir_path)
    ### Add a print command here to print ==dirs==
        print(sub_dirs)
        ### Add a print command here to print ==files==
        print(files)
        ## Add line between returns
        print("*" * 25)

    print("***********Print End***********")


dir_walk()