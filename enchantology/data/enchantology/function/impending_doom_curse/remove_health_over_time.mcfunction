### Remove health every three seconds unless enchantment is removed, 
### i.e., lose all health in 60 seconds. Note that this function is
### executed every tick while the enchantment is equipped. Another
### advancement is triggered when the enchantment is removed, resetting
### max_health and the scoreboards.

# Initialize scoreboard for keeping track of amount of health already removed
execute as @s run scoreboard players add @s impendingDoomHealthRemoved 0

# Reset timer every 60 ticks, at which max_health is lowered, then increase timer
execute as @s[scores={impendingDoomTimer=60}] run scoreboard players set @s impendingDoomTimer 0
execute as @s run scoreboard players add @s impendingDoomTimer 1

# Add health removed to scoreboard if need to be changed, then store the -1*result in storage
execute as @s[scores={impendingDoomTimer=60}] run scoreboard players add @s impendingDoomHealthRemoved 1
execute as @s[scores={impendingDoomTimer=60}] run execute store result storage enchantology:impending_doom_health amount_to_remove int -1 run scoreboard players get @s impendingDoomHealthRemoved

# Run health removal function
execute as @s[scores={impendingDoomTimer=60}] run function enchantology:impending_doom_curse/remove_health with storage enchantology:impending_doom_health

# Schedule a command to check if the armor is removed on the next tick. If so, restore max_health and reset scoreboards
schedule function enchantology:impending_doom_curse/restore_health 1t