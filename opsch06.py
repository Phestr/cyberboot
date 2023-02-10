

import os

#Declare variables
define_user = "whoami"
define_ip = "ip a"
define_hardware = "lshw -short"

#main printing
print(os.system(define_user))
print(os.system(define_ip))
print(os.system(define_hardware))


