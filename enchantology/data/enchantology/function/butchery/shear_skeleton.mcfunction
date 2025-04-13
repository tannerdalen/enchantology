# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 16

# Message to send attacker if actions depleted
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run tellraw @s {"text":"You've already fractured its bones...", "color":"gray", "italic":true}
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run tellraw @s {"text":"You've already fractured its bones...", "color":"gray", "italic":true}

# Drop an iron ingot at the location of the Iron Golem if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:bone_meal",count:1}}

# Special: KILL SKELETON if all bones have been severed off
execute if entity @s[scores={shearActionsRemaining=0}] as @s run damage @s 999 minecraft:player_attack by @p
execute if entity @s[scores={shearActionsRemaining=0}] as @s run damage @s 999 minecraft:player_attack by @p

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1