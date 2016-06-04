# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
#  we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'prime'

# it's built in:
test = Prime.first 10001
p test[-1]

#long-form

#create array of length 0
#count i from 2 upwards by 1
# => run prime_factor function on i
# => IF i is not prime, move on
# => ELSE add to array
# => when array length = 10001 return last element