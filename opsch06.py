

import os
#Declare variables
define_user = ("whoami")
define_ip = ("ip A")
define_hardware = ("ishw -short")
#main printing
print("result of whoami")
print(define_user.read())
print("result of ip a")
print(define_ip.read())
print("result of ishw-short")
print(define_hardware.read())