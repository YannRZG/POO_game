require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Jean")


while player1.life_point > 0 && player2.life_point > 0 do
puts "Voici l'état de chaque joueur :"
print player1.show_state
print player2.show_state
puts " "

puts "Passons à la phase d'attaque :"
player2.attacks(player1)
player1.attacks(player2)
puts " "

break if player2.life_point == 0 || player1.life_point == 0 

end

