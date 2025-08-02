# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 10

# Drop an iron ingot at the location of the Iron Golem if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",count:1}}

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1