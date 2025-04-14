# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 20

# Message to send attacker if actions depleted
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run tellraw @s {"text":"This centurion has been butchered enough...", "color":"gray", "italic":true}

# Drop an iron ingot at the location of the Iron Golem if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",count:1}}

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1