class PrimeGenerator
  
  def initialize
    @number_of_dividers = 0
    @list_of_prime = []
  end
  
  def is_divider a , b
    ((b % a) == 0)
  end
  
  def is_prime an_number
    @number_of_dividers = 0
    (2..an_number).each do |n|
      if (is_divider n , an_number)
        @number_of_dividers += 1
      end
    end
    (@number_of_dividers == 1)
  end
  
  def all_primes_to an_number
    initialize
    (2..an_number).each do |n|
      if (is_prime n) 
        @list_of_prime.push(n) 
      end
    end
    (@list_of_prime)
  end
  
end