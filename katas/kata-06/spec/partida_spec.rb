require "rspec"
require_relative "../lib/partida"

describe "Partida" do 
	describe "initialize" do
		it "inicializo una partida" do
			@partida = Partida.new
		end
	end

	describe "cargar nombre de jugadores" do
		it "cargo el nombre del jugador 1" do
			@partida = Partida.new
			nombre = "Jugador 1"
			@partida.set_nombre_jugador_1 nombre
			@partida.get_nombre_jugador_1.should be nombre
		end

		it "cargo el nombre del jugador 2" do
			@partida = Partida.new
			nombre = "Jugador 2"
			@partida.set_nombre_jugador_2 nombre
			@partida.get_nombre_jugador_2.should be nombre
		end
	end
end