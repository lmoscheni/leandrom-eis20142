class Jugador
	def initialize
		@nombre
		@puntaje = 0
		@tablero = Tablero.new
	end

	def disparar una_posicion
		if ! @tablero.hay_barco? una_posicion
			return "agua"
		end
		return self._verificar_resultado_del_disparo una_posicion
	end

	def _verificar_resultado_del_disparo una_posicion
		# Se puede mejorar con double dispatch
		barco = @tablero.get_barco una_posicion
		if barco.recibir_disparo una_posicion == "tocado"
			@puntaje += 1
			return "tocado"
		end
		@puntaje += 2
		return "hundido"
	end
end