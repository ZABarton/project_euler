# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
require 'prime'
factors = []


def prime_factor(number, factor)
	return factor if number == 1
	Prime.each(number) do |p|
		puts p
		if number % p == 0
			number = number/p
			puts number
			if p >= factor
				factor = p
				puts factor
			end
			break
		end
	end
	puts "Passing in #{number} and factor #{factor}"
	prime_factor(number, factor)
end

puts prime_factor(600851475143, 1)

#start with largest number
#iterate through primes
#if large number is divisible by prime
# => check if this is the largest divisor
# => if it is, store it
# => divide the large number by divisor
# => recursive function call with quotient


# 1000
# 2
# save 2, get 500
# 500
# 2
# save 2, get 250
# 250
# 2
# save 2, get 125