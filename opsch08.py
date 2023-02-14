#!/usr/bin/env python3
# Ops 301 Challenge 8 : Python Collections




# Assign to a variable a list of ten string elements.
my_produce_list = [ "carrot", "celery", "spinach", "squash", "potato", "turnip", "avocado", "apple", "orange", "lime" ]

# Print the fourth element of the list.
print(my_produce_list[3])

# Print the sixth through tenth element of the list.
sub = slice(5, 10)
print(my_produce_list[sub])

# Change the value of the seventh element to “onion”.
my_produce_list[6] = "onion"
print(my_produce_list)