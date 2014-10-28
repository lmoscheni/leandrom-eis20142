require "rspec"
require_relative "../lib/tablero"

describe "Tablero" do 
	describe "initialize" do
		it "inicializo un tablero" do
			@tablero = Tablero.new
		end
	end
end