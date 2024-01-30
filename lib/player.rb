require 'bundler'
Bundler.require

class Player
    attr_accessor :player_name, :life_point
   

    def initialize(player_name)
        @player_name = player_name
        @life_point = 10
    end 

    def show_state
        puts "> #{@player_name} a #{@life_point} points de vie."
    end

    def gets_damage(damage)
         @life_point -= damage
        if @life_point <= 0
            puts "Le joueur #{@player_name} a été tué !"
        else
            puts "Le joueur #{@player_name} a #{@life_point} points de vie !"
        end
    end
    
    
    def attacks(player_to_attack)
        
        puts "#{@player_name} attaque #{player_to_attack.player_name} !"
        damage = compute_damage 
        
        puts "Il/elle lui inflige #{damage} points de dégats !"
        player_to_attack.gets_damage(damage)
    end

    def compute_damage
    return rand(1..6)
    end  
        
end   

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(player_name)
        super(player_name)
        @life_point = 100
        @weapon_level = 1


    end

    def show_state
        print "> #{@player_name} a #{@life_point} points de vie et une arme de niveau #{@weapon_level}."
    end
    
    
    def search_weapon
        new_weapon_level = rand(1..6)
        
        puts "Vous avez trouvé une arme de niveau #{new_weapon_level}."
        
        if new_weapon_level > @weapon_level 
            puts "Bsartek mon reuf ! elle est tarpin mieux que ton arme actuelle !"
            @weapon_level = new_weapon_level

        elsif new_weapon_level <= @weapon_level
            puts "Cette nouvelle arme est claqué poto !"
        end
    end
    

    def compute_damage
        rand(1..6) * @weapon_level
    end

    # def search_heal
    #     new_life_point = @life_point + heal_pack 
    #     heal_pack = rand(1..6)
    #     if heal_pack == 1 
    #         puts "C'est chaud mon reuf y'a pas de soin en vue.."
    #     elsif heal_pack.between?(2, 5) 
    #         puts "Tié un bon le sang ! Tu as trouvé un pack de 50pv."
    #     elsif heal_pack == 6
    #         puts "POUAAAH t'es bon ! 80pv gratuit dans ton frigo !"
    #         puts "Full life mon gros !"
    #     else new_life_point
    #     end
    # end

    def search_heal
        heal_pack = rand(1..6)
        new_life_point = @life_point + heal_pack 
        if heal_pack == 1 
            puts "C'est chaud mon reuf y'a pas de soin en vue.."
        elsif heal_pack.between?(2, 5) 
            puts "Tié un bon le sang ! Tu as trouvé un pack de 50pv."
        elsif heal_pack == 6
            puts "POUAAAH t'es bon ! 80pv gratuit dans ton frigo !"
        else new_life_point == 100
            puts "Full life mon gros !"
        end
    end
    
end




#binding.pry


