# Based off of watermill:while041_ln160
#say Running while003_give_potions

# Give the caller one potion
function hastepotion:give_potion
# Subtract 1 from the 'regular dbreath' count and 1 from the 'crafted potions' count
scoreboard players remove Global hp_count_dbreath 1
scoreboard players remove @s hp_craft_potion 1

# Run this function again if there are still potions to return (?)
execute if score Global hp_count_dbreath matches 1.. if score @s hp_craft_potion matches 1.. run function hastepotion:while003_give_potions

# Otherwise set the safety stopper back to 0
scoreboard players set craftSafetyStopper hp_internals 0