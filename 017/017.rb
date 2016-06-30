

def in_words(number)
	small = ['zero','one', 'two', 'three', 'four', 'five', 'six', 'seven',
'eight', 'nine', 'ten', 'eleven','twelve','thirteen','fourteen','fifteen',
'sixteen','seventeen','eighteen','nineteen']
	multiples_of_ten = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	large = ['hundred', 'thousand']
	if number < 20
		result = small[number]
	elsif number >= 20 && number < 100
		lead_digit = number/10
		last_digit = number%10
		unless last_digit == 0
			result = "#{multiples_of_ten[lead_digit-2]}#{small[last_digit]}"
		else
			result = "#{multiples_of_ten[lead_digit-2]}"
		end
	elsif number >= 100 && number < 1000 
		lead_digit = number/100
		remainder = number % 100
		if remainder == 0
			result = "#{small[lead_digit]}#{large[0]}"
		elsif remainder < 20
			result = "#{small[lead_digit]}#{large[0]}and#{small[remainder]}"
		elsif remainder >= 20
			middle_digit = remainder/10
			last_digit = remainder % 10
			unless last_digit == 0
				result = "#{small[lead_digit]}#{large[0]}and#{multiples_of_ten[middle_digit-2]}#{small[last_digit]}"
			else
				result = "#{small[lead_digit]}#{large[0]}and#{multiples_of_ten[middle_digit-2]}"
			end
		end
	else
		result = "onethousand"
	end
end

string = ''
for i in 1..1000
	string += in_words(i)
end

puts string.length
