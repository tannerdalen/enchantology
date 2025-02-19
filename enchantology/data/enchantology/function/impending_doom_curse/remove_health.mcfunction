### Sets max health using macro defined in enchantology:impending_doom_curse/remove_health_over_time
### every three seconds (60 ticks)

# Remove modifier (if it already exists)
execute as @s run attribute @s minecraft:max_health modifier remove impending_doom_modifier

# Add the same modifier back but now with the new value
$execute as @s run attribute @s minecraft:max_health modifier add impending_doom_modifier $(amount_to_remove) add_value

# Play spooky sound
playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0

# Catch case when max_health should be set to zero (kill entity, reset max health and scoreboards)

execute as @s[scores={impendingDoomHealthRemoved=20}] run function enchantology:impending_doom_curse/kill_player
execute as @s[scores={impendingDoomHealthRemoved=20}] run attribute @s minecraft:max_health modifier remove impending_doom_modifier
execute as @s[scores={impendingDoomHealthRemoved=20}] run scoreboard players reset @s impendingDoomHealthRemoved
execute as @s[scores={impendingDoomHealthRemoved=20}] run scoreboard players reset @s impendingDoomTimer