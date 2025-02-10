# This function will run every tick, using predicates and scoreboards to determine
# when to roll the dice, i.e., explode.

# Set initial score
execute as @s unless entity @s[nbt={RootVehicle:{}}] run scoreboard players set @s rtdGodfather 0

# Check if riding anything, update score if so
execute as @s[nbt={RootVehicle:{}},scores={rtdGodfather=0}] run scoreboard players set @s rtdGodfather 1

# If riding, rtd to explode
execute if predicate {"condition": "minecraft:random_chance","chance": 0.05} as @s run function enchantology:godfather_curse/godfather_kill_entity

# Update score so you dont rtd again until next mount
execute as @s[scores={rtdGodfather=1}] run scoreboard players set @s rtdGodfather 2