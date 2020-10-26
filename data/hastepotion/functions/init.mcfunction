# Print load message
tellraw @a ["",{"text":"\u2714","color":"dark_green"},{"text":" Haste Potion datapack loaded.\nGet some Honey Bottles and go craft a "},{"text":"Potion of Caffeination","color":"yellow"},{"text":".\nMore info "},{"text":"here","underlined":true,"clickEvent":{"action":"open_url","value":"http://bit.ly/HastePotionDatapack"}}]

# Set up scoreboard values for tracking crafting of dragon_breath
scoreboard objectives add h_craft_potion minecraft.crafted:minecraft.dragon_breath
scoreboard objectives add h_count_dbreath dummy
