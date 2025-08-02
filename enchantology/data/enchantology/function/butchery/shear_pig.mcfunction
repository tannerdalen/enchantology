# Assign shearActionsRemaining to entity if not assigned already, or if cooldown is over
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 5

# Drop item if shear available, 25% of the time
execute unless entity @s[scores={shearActionsRemaining=0}] if predicate {"condition": "minecraft:random_chance","chance": 0.25} as @p run summon item ~ ~1 ~ {Item:{id:"minecraft:porkchop",count:1}}

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1