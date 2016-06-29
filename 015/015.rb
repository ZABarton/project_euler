# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

# 1x1 = 2
# 2x2 = 6

# The number of lattice paths from (0,0) to (n,k) is equal to the binomial coefficient {n+k}/{n}

def factorial(num)
	return 1 if num <= 1
	result = num*factorial(num-1)
end

# 40 choose 20 
n = 40
k = 20

numerator = factorial(n)
denominator = factorial(k)*factorial(n-k)

puts (numerator/denominator)