# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# c = a + b - 1000
# c = (a^2 + b^2)^0.5

# a + b - 1000 = (a^2 + b^2)^0.5

# (a+b-1000)^2 = a^2 + b^2

# (a+b-1000)*(a+b-1000)
# a^2 + ab - 1000a + ab + b^2 -1000b - 1000a - 1000b + 1000000

# a^2 + 2ab + b^2 - 2000a - 2000b + 1000000 = a^2 + b^2
#2ab - 2000a - 2000b + 1000000 = 0

a = 1
while a < 333
	b = a+1
	while ((1000-(a+b)) > a)
		if ((2*a*b)-(2000*a)-(2000*b)+1000000) == 0
			puts a
			puts b
			c = 1000 - (a+b)
			puts c
			puts (a*b*c)
			break
		end
	b += 1
	end
a += 1
end