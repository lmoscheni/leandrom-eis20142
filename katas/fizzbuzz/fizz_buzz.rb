class FizzBuzz
	def say an_number
		if it_is_a_multiple_of_5? an_number
			return "Buzz"
		else
			return "Fizz"
		end
	end

	def it_is_a_multiple_of_5? an_number
		return (an_number % 5) == 0 
	end
end