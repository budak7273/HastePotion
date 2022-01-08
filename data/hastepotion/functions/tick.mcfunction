# Detect players that have crafted at least one dragon's breath and deal with that
execute as @a[scores={hp_craft_potion=1..}] if score @s hp_craft_potion matches 1.. run function hastepotion:while001_crafted_potions

# Increment global timers by 1
scoreboard players add hp_timer_player hp_internals 1


# If player timer exceeds m_player_interval, call the function it's supposed to run (and reset it back to 0)
execute if score hp_timer_player hp_internals >= hp_player_interval hp_options run function hastepotion:on_player_interval

