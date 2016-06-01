# A palindromic number reads the same both ways. The largest palindrome made from the product 
# of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

a = 100
b = 999

palindromes = []

for i in a..b
	for j in a..b
		number = i*j
		if number.to_s.reverse == number.to_s
			palindromes << number
		end
	end
end

puts palindromes.max

#906609

