require "rspec"
require_relative "../lib/jugador"

describe "Jugador" do 
	describe "initialize" do
		it "inicializo un jugador" do
			@tablero = Jugador.new
		end
	end
end