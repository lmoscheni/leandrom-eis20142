Given(/^iniciar ahorcado con "(.*?)"$/) do |palabra_secreta|
  @ahorcado = Ahorcado.new palabra_secreta
end

When(/^arriesgo "(.*?)"$/) do |una_letra|
  @ahorcado.arriesgar una_letra
end

Then(/^obtengo "(.*?)"$/) do |un_estado|
   @ahorcado.estado.should eq un_estado
end

Then(/^me quedan (\d+) vidas$/) do |cantidad_de_vidas|
  @ahorcado.vidas.should eq cantidad_de_vidas.to_i
end

Then(/^termino el juego$/) do
  #(@ahorcado.gane? || @ahorcado.perdi?).should eq true
end

Then(/^gane$/) do
   @ahorcado.gane?.should eq true
end

Then(/^perdi$/) do
  @ahorcado.perdi?.should eq true
end
