# Based off of watermill:while042_ln165
#say Running while004_return_regular_dragon_breath

# Give the caller regular dragon_breath
give @s dragon_breath 1
# Subtract 1 from the 'dragon_breath to return' count
scoreboard players remove Global hp_count_dbreath 1

# Run this function again if there is still dbreath to return
execute if score Global hp_count_dbreath matches 1.. run function hastepotion:while004_return_regular_dragon_breath