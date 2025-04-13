# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 2

# Message to send attacker if actions depleted
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run tellraw @s {"text":"This creature has been gouged enough...", "color":"gray", "italic":true}

# Drop an ender pearl at the location of the enderman if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_pearl",count:1}}

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1