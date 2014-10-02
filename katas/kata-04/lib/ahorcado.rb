class Ahorcado

	def initialize palabra_secreta
		@palabra_secreta = palabra_secreta
		@vidas = 3
		@estado = ""
		palabra_secreta.each_char { |chr| @estado += '*' }
	end

	def vidas
		@vidas
	end

	def estado
		@estado
	end

	def gane?
		@palabra_secreta == @estado
	end

	def perdi?
		@vidas == 0
	end

	def arriesgar an_char
		estado_inicial = @estado
		self.actualizar_estado_luego_de_arriesgar an_char
		self.actualizar_vidas_luego_de_arriesgar estado_inicial
		
	end

	def actualizar_estado_luego_de_arriesgar an_char
		index = 1
		@palabra_secreta.each_char { |chr| 
			if chr == an_char
				self._replace index , an_char
			end
			index += 1
		}
	end

	def actualizar_vidas_luego_de_arriesgar estado_inicial
		if estado_inicial == @estado
			@vidas -= 1
		end
	end

	def _replace an_position , an_char
		index = 1
		nuevo_estado = ""
		@estado.each_char { |chr| 
			if index == an_position
				nuevo_estado += an_char
			else
				nuevo_estado += chr
			end
			index += 1
		 }
		 @estado = nuevo_estado
		
	end

end