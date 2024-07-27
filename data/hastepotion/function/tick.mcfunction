# Increment global timers by 1
scoreboard players add hp_timer_player hp_internals 1

# If player timer exceeds m_player_interval, call the function it's supposed to run (and reset it back to 0)
execute if score hp_timer_player hp_internals >= hp_player_interval hp_options run function hastepotion:on_player_interval
