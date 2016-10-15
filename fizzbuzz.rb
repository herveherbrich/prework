(1..100).each do |x|
	result = ""

	if x % 3 == 0 && x % 5 == 0
		result = "FizzBuzz"
	end

	if x % 3 == 0
		result = "Fizz"
	end

	if x % 5 == 0
		result = "Buzz"
	else 
		result = x.to_s
	end	


	if x.to_s[0] == "1"
		result += "Bang"
		# result = result + "Bang"
	end

	puts result
end

