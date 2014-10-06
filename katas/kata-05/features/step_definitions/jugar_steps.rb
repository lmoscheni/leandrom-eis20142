Given(/^iniciar ahorcado con "(.*?)"$/) do |palabra_secreta|
  @ahorcado = Ahorcado.new palabra_secreta
end

Given(/^cantidad de vidas (\d+)$/) do |numero_de_vidas|
  @ahorcado.vidas numero_de_vidas
end

When(/^arriesgo "(.*?)"$/) do |una_letra|
  @ahorcado.arriesgar una_letra
end

Then(/^obtengo "(.*?)"$/) do |un_estado|
   @ahorcado.estado == un_estado
end

Then(/^me quedan (\d+) vidas$/) do |cantidad_de_vidas|
  @ahorcado.vidas == cantidad_de_vidas
end

Then(/^termino el juego$/) do
  @ahorcado.gane? || @ahorcado.perdi?
end

Then(/^gane$/) do
   @ahorcado.gane?
end

Then(/^perdi$/) do
  @ahorcado.perdi?
end
