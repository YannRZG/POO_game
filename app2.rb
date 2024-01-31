require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "Entrez votre pseudo :"
print "> "
player_name = gets.chomp

player1 = Player.new("José")
player2 = Player.new("Jean")
user = HumanPlayer.new(player_name)

# Message de bienvenue avec le pseudo du joueur
puts "-------------------------------------------------------------------------
| Bonjour #{user.player_name} ! Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
| Le but du jeu est d'être le dernier survivant !       |
-------------------------------------------------------------------------------"
puts " "

#Présentation des ennemies et du nombre de points de vie du joueur
puts "Voici vos ennemies :"
puts "#{player1.player_name} et #{player2.player_name} sont là pour vous nuire, ils ont chacun #{player1.life_point}pv."
puts " "
puts "Vous disposez de #{user.life_point}pv, battez-les !"
puts " "

#Menu d'interactions
puts "Quelle action veux-tu effectuer ?"
puts "Quelle action veux-tu effectuer ?
a - chercher une meilleure arme
s - chercher à se soigner
attaquer un joueur en vue :
0 - #{player1.player_name} a #{player1.life_point} points de vie
1 - #{player2.player_name} a #{player2.life_point} points de vie"
print "> "
choice = gets.chomp
case choice
when 'a' 
    user.search_weapon 
    
when 's'
    user.search_heal
end





# while humanplayer.life_point > 0 && (player1.life_point > 0 || player2.life_point > 0) 
# end
    #puts player_name.show_state




#binding.pry