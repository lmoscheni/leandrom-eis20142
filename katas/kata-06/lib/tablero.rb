require "generador_de_posiciones_aleatorias"

class Tablero
	def initialize
		@generador_de_posiciones_aleatorias = GeneradorDePosicionesAleatorias.new
		@barcos
	end

	def ubicar_barcos_aleatoriamente una_cantidad
		#  TO DO
	end

	def poner_barco un_barco
		@barcos.push un_barco
	end

	def get_barco una_posicion
		@barcos.each do |barco|
			if barco.esta_en_posicion una_posicion
				return barco
			end
		end
	end

	def hay_barco? una_posicion
		@barcos.each do |barco|
			if barco.esta_en_posicion una_posicion
				return true
			end
		end
		return false
	end

end