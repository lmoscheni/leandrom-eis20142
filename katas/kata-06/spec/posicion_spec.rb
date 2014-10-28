require "rspec"
require_relative "../lib/posicion"

describe "Posicion" do 
	describe "initialize" do
		it "inicializo una posicion" do
			@posicion = Posicion.new 1 , 1
		end
	end

	describe "getters" do
		it "obtener el valor en x" do
			@posicion = Posicion.new 1 , 2
			expect(@posicion.get_x).to be 1
		end

		it "obtener el valor en y" do
			@posicion = Posicion.new 1 , 2
			expect(@posicion.get_y).to be 2
		end
	end

	describe "comparacion entre posiciones" do
		it "comparo dos posiciones iguales" do
			@posicion1 = Posicion.new 1,1
			@posicion2 = Posicion.new 1,1
			expect(@posicion1.equal? @posicion2).to be true
		end

		it "comparo dos posiciones distintas en y" do
			@posicion1 = Posicion.new 1,1
			@posicion2 = Posicion.new 1,2
			expect(@posicion1.equal? @posicion2).to be false
		end

		it "comparo dos posiciones distintas en x" do
			@posicion1 = Posicion.new 2,2
			@posicion2 = Posicion.new 1,2
			expect(@posicion1.equal? @posicion2).to be false
		end
	end
end