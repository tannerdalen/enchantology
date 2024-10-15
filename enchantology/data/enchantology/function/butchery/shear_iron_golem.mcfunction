# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 20

# Message to send attacker if actions depleted
execute if entity @s[scores={shearActionsRemaining=0}] as @s run tellraw @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] {"text":"This centurion has been butchered enough...", "color":"gray", "italic":true}

# Drop an iron ingot at the location of the Iron Golem if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",count:1}}

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1