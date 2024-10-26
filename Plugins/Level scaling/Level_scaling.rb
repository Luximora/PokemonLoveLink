#######Simple script######
Firstevo = 30
Secondevo = 60
Mult = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]

EventHandlers.add(:on_trainer_load, :simple_scaling,
  proc { |trainer|
    if trainer
      if ["Roxanne", "Lara", "Willow"].include?(trainer.trainer_type_name)
        next
      end

      scale_based_on_variable = ["Canary", "Bling"].include?(trainer.trainer_type_name)
      scale_value = scale_based_on_variable ? $game_variables[26] : Mult[$Trainer.badge_count]

      for pkmn in trainer.party
        pkmn.level += scale_value
        setNewStage(pkmn)
        pkmn.reset_moves
        pkmn.calc_stats
      end
    end
  }
)

######Complex Script##############
=begin
Firstevo=40
Secondevo=40
Gymvar=40
GymList=[[1,5],[2,6],[3,7],[1,2,10],[2,1,11],[1,3,13],[3,1,12],[2,3,15],[3,2,15]]
def path(gymlist)
	pathlist=[]
	for element in gymlist
		pathlist.push(element[0...((element.length)-1)])	
	end
	return pathlist
end

EventHandlers.add(:on_trainer_load, :complex_scaling,
  proc { |trainer|
   if trainer  
		if $Trainer.badge_count>0 
			list=$game_variables[Gymvar]###[0...$game_variables[Gymvar].length]
			pathlist=path(GymList)
			for i in 0...pathlist.length
				if list==pathlist[i]
					for pkmn in trainer.party
						pkmn.level+= GymList[i][-1]
						setNewStage(pkmn)
						pkmn.reset_moves
						pkmn.calc_stats
					end
				end
			end
		end
   end
  }
)
=end

def setNewStage(pokemon)
	regional_forms= [
    :RATTATA, :SANDSHREW, :VULPIX, :DIGLETT, :GEODUDE,:BURMY, :MEOWTH,
    :GRIMER, :PONYTA, :FARFETCHD, :CORSOLA, :ZIGZAGOON, :PUMPKABOO,
    :DARUMAKA, :YAMASK, :STUNFISK, :SLOWPOKE, :ARTICUNO, :ZAPDOS,
    :MOLTRES, :PIKACHU, :EXEGGCUTE, :CUBONE, :KOFFING, :MIMEJR]
	form = pokemon.form   # regional form
    pokemon.species = GameData::Species.get(pokemon.species).get_baby_species # revert to the first stage
    regionalForm = false
    for species in regional_forms do
      regionalForm = true if pokemon.isSpecies?(species)
    end

    2.times do |stage|
      evolutions = GameData::Species.get(pokemon.species).get_evolutions(false)

      # Checks if the species only evolve by level up
      other_evolving_method = false
      evolutions.length.times { |i|
        if evolutions[i][1] != :Level
          other_evolving_method = true
        end
      }

      if !other_evolving_method && !regionalForm   # Species that evolve by level up
        if pokemon.check_evolution_on_level_up != nil
          pokemon.species = pokemon.check_evolution_on_level_up
          pokemon.setForm(form) if regionalForm
        end

      else  # For species with other evolving methods
        # Checks if the pokemon is in it's midform and defines the level to evolve
        level = stage == 0 ? Firstevo : Secondevo

        if pokemon.level >= level
          if evolutions.length == 1         # Species with only one possible evolution
            pokemon.species = evolutions[0][0]
            pokemon.setForm(form) if regionalForm

          elsif evolutions.length > 1
            if regionalForm
              if form > evolutions.length  # regional form
                pokemon.species = evolutions[0][0]
                pokemon.setForm(form)
              else                          # regional evolution
                if !pokemon.isSpecies?(:MEOWTH)
                  pokemon.species = evolutions[form][0]

                else  # Meowth has two possible evolutions and a regional form depending on its origin region
				  
                  if form == 0 || form == 1
                    pokemon.species = evolutions[0][0]
                    pokemon.setForm(form)
                  else
                    pokemon.species = evolutions[1][0]
                  end
                end
              end

            else                            # Species with multiple possible evolutions
              pokemon.species = evolutions[rand(0, evolutions.length - 1)][0]
            end
          end
        
      end
    end
  end

end
