require "rspec"
require_relative "../../lib/partida"

Given(/^tengo una partida$/) do
  @partida = Partida.new
end

When(/^le pongo al jugador uno el nombre "(.*?)"$/) do |un_nombre|
  @partida.set_nombre_jugador_1 un_nombre
end

Then(/^el nombre del jugador uno es "(.*?)"$/) do |un_nombre|
  @partida.get_nombre_jugador_1.should == un_nombre
end

When(/^le pongo al jugador dos el nombre "(.*?)"$/) do |un_nombre|
  @partida.set_nombre_jugador_2 un_nombre
end

Then(/^el nombre del jugador dos es "(.*?)"$/) do |un_nombre|
  @partida.get_nombre_jugador_2.should == un_nombre
end

