
# Reset the stopper and crafting loop
scoreboard players set craftSafetyStopper hp_internals 0
scoreboard players set @s hp_craft_potion 0

# Warning message and sound
tellraw @s ["",{"text":"\u2715","color":"red"},{"text":" Item-returning automatically gave up as a lag prevention measure. Don't drop custom crafting item products on the ground.","italic":true,"color":"gray"}]
execute as @s at @s run playsound minecraft:block.note_block.snare voice @s ~ ~ ~ 1 0.25