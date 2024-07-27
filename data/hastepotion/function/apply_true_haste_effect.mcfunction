# take away the "marker" effect
effect clear @s minecraft:unluck

# feed for 3 haunches
effect give @s minecraft:saturation 1 5 true

# play special drinking sound
execute at @s run playsound minecraft:entity.generic.drink voice @s ~ ~ ~ 40 0.5
execute at @s run playsound minecraft:entity.player.breath voice @s ~ ~ ~ 40 1.5

# particles
execute at @s run particle minecraft:wax_on ~-0.25 ~ ~-0.25 0.5 1 0.5 1 100 normal

# bump the fun potions drank by player counter
scoreboard players add @s hp_potions_drank 1
