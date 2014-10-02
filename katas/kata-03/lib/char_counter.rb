class CharCounter
	
	def self.count an_string
		if an_string.nil? || an_string.empty?
			return Hash.new
		else
			return CharCounter.generate_dic an_string
		end
	end

	def self.generate_dic an_string
		dic = Hash.new
		an_string.each_char do |c|
			if dic[c].nil?
				dic[c] = 1
			else
				dic[c] += 1
			end
		end
		dic
	end
	
end