# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 5

# Drop item if shear available, 25% of the time
execute as @s[scores={shearActionsRemaining=0..}] if predicate {"condition": "minecraft:random_chance","chance": 0.25} run summon item ~ ~1 ~ {Item:{id:"minecraft:beef",count:1}}

# Subtract from shearActionsRemaining
execute as @s[scores={shearActionsRemaining=0..}] run scoreboard players remove @s shearActionsRemaining 1