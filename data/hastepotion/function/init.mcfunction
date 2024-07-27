# Print load message
tellraw @a ["",{"text":"\u2714","color":"dark_green"},{"text":" Haste Potion datapack loaded.\nGet some Honey Bottles and go craft a "},{"text":"Potion of Caffeination","color":"yellow"},{"text":".\nMore info "},{"text":"here","underlined":true,"clickEvent":{"action":"open_url","value":"http://bit.ly/HastePotionDatapack"}}]

# Fun potions drank by player counter
scoreboard objectives add hp_potions_drank dummy "Potions of Caffeination Consumed"

# Set up scoreboard values for timed functions and internal settings
scoreboard objectives add hp_internals dummy "HastePotion Internal"

# Set up options scoreboard
scoreboard objectives add hp_options dummy "Haste Potion Datapack"
scoreboard objectives modify hp_options displayname {"text":"Haste Potion Datapack","bold":true,"color":"yellow"}

# init effect checking player interval to every 20 ticks (1 second)
scoreboard players set hp_player_interval hp_options 20
