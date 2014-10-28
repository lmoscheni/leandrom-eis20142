class Barco
	
	def initialize
		@posiciones
	end

	def _hundido?
		@posiciones.empty?
	end

	def recibir_disparo una_posicion
		@posiciones = self._quitar_posicion una_posicion
		return self._estado
	end

	def _quitar_posicion una_posicion
		posiciones = []
		@posiciones.each do |posicion|
			if ! posicion.equal? una_posicion
				posicion.push posicion
			end
		end
		return posiciones
	end

	def _estado
		if @posiciones.empty?
			return "hundido"
		end
		return "tocado"
	end

	def esta_en_posicion una_posicion
		@posiciones.each do |posicion|
			if posicion.equal? una_posicion
				return true
			end
		end
		return false
	end

end