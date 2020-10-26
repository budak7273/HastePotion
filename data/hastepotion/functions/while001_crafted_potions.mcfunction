# Based off of watermill:while043_ln150
#say Running while001_crafted_potions

# Empty the player's inventory of dragon_breath, storing the count in counter variables so regular ones can be returned
execute store result score Global h_count_dbreath run clear @s minecraft:dragon_breath

# Give hastepotion for the dragon_breath that were crafted to be turned into potions, taking away from the number of regular dragon_breath to return
execute if score Global h_count_dbreath matches 1.. if score @s h_craft_potion matches 1.. run function hastepotion:while003_give_potions

# Give back the remaining regular dragon_breath
execute if score Global h_count_dbreath matches 1.. run function hastepotion:while004_return_regular_dragon_breath

#scoreboard players set @s h_craft_potion 0

# Run the function again if there is still a crafted potions score for the player
#execute if score @s h_craft_potion matches 1.. run function hastepotion:while001_crafted_potions


