# reset the interval counter back to zero
scoreboard players set hp_timer_player hp_internals 0

# run the checker for having the haste potion signal
# the potion item gives Bad Luck amp 42 as the signal
execute as @a[nbt={active_effects:[{id:"minecraft:unluck", amplifier: 42b}]}] run function hastepotion:apply_true_haste_effect