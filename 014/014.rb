# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

def collatz(num)
	chain = []
	while num != 1
		if num % 2 == 0
			chain << num
			num = num/2
		else
			chain << num
			num = (num*3)+1
		end
		if num == 1
			chain << num
		end
	end
	return chain.length
end


highest = 0
for i in 1..1000000
	if collatz(i) > highest
		highest = collatz(i)
		value = i
	end
end

puts value