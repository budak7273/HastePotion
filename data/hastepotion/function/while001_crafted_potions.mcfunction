# Based off of watermill:while043_ln150
#say Running while001_crafted_potions

# Increase the safety stopper
scoreboard players add craftSafetyStopper hp_internals 1

# Empty the player's inventory of dragon_breath, storing the count in counter variables so regular ones can be returned
execute store result score Global hp_count_dbreath run clear @s minecraft:dragon_breath

# (while002 from Magnet is not needed here since the items are distinct)

# Give hastepotion for the dragon_breath that were crafted to be turned into potions, taking away from the number of regular dragon_breath to return
execute if score Global hp_count_dbreath matches 1.. if score @s hp_craft_potion matches 1.. run function hastepotion:while003_give_potions

# Give back the remaining regular dragon_breath
execute if score Global hp_count_dbreath matches 1.. run function hastepotion:while004_return_regular_dragon_breath

# Safety for if this runs too many times without succeeding in completing its task
execute if score craftSafetyStopper hp_internals matches 100.. run function hastepotion:crafting_dropped_item_error

# Debugging always stop after one pass
#scoreboard players set @s hp_craft_potion 0

# Run the function again if there is still a crafted potions score for the player
# Need this off to prevent superlag when the player dropped the item on the ground instead of taking it into their inventory
#execute if score @s hp_craft_potion matches 1.. run function hastepotion:while001_crafted_potions


