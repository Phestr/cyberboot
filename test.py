#!/usr/bin/env python3

# Import libraries

import os

my_dir = input("Please input file path: ")

for (root_dir_path, sub_dirs, files) in os.walk(my_dir):
    ### Add a print command here to print ==root==
    print(root_dir_path)
   ### Add a print command here to print ==dirs==
    print(sub_dirs)
    ### Add a print command here to print ==files==
    print("Files: ") + print(files)
     ## Add line between returns
    print("*" * 25)