# reset the interval counter back to zero
scoreboard players set hp_timer_player hp_internals 0

# run the checker for having the haste potion signal
# id 27 is Bad Luck, the potion item gives Bad Luck 42
execute as @a[nbt={ActiveEffects:[{Id: 27b, Amplifier: 42b}]}] run function hastepotion:apply_true_haste_effect