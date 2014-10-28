require "rspec"
require_relative "../lib/barco"

describe "Barco" do 
	describe "initialize" do
		it "inicializo un barco" do
			@barco = Barco.new
		end
	end
end