# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
require 'prime'

prime_factors = []

def prime_factor(number)
	array = []
	list_of_primes = Prime.each(number).to_a
	list_of_primes.each do |prime|
		while number % prime == 0
			array << prime
			number = number/prime
		end
	end
	return array
end

for i in 2..20
	intersect = [0]
	factors = prime_factor(i)
	p "i = #{i}"
	p "Prime factors of i: #{factors}"
	factors.each do |x|
		if factors.count(x) > prime_factors.count(x)
			prime_factors << x
		end
	end
	p "total #{prime_factors}"
	p "---"
end

p prime_factors
p prime_factors.inject { |product, value| product * value }


