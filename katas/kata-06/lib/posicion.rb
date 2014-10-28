class Posicion

	def initialize x , y
		@x = x
		@y = y
	end

	def get_x
		@x
	end

	def get_y
		@y
	end

	def equal? otra_posicion 
		@x == otra_posicion.get_x && @y == otra_posicion.get_y
	end
	
end