# Assign shearActionsRemaining to entity if not assigned already, or if cooldown is over
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 5
execute if entity @s[scores={shearActionsCooldown=0}] unless entity @s[scores={shearActionsRemaining=1..}] run scoreboard players set @s shearActionsRemaining 5

# Message to send attacker if actions depleted
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:1}]] run tellraw @s {"text":"This cattle has already been carved. Let the flesh return...", "color":"gray", "italic":true}
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run tellraw @s {"text":"This cattle has already been carved. Let the flesh return...", "color":"gray", "italic":true}
execute as @s[scores={shearActionsRemaining=0}] if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run tellraw @s {"text":"This cattle has already been carved. Let the flesh return...", "color":"gray", "italic":true}

# Drop item if shear available, 25% of the time
execute as @s unless entity @s[scores={shearActionsRemaining=0}] if predicate {"condition": "minecraft:random_chance","chance": 0.25} as @p run summon item ~ ~1 ~ {Item:{id:"minecraft:porkchop",count:1}}

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1

# Optional: start cooldown time, 5 min (6000 ticks)
execute if entity @s[scores={shearActionsRemaining=0}] run scoreboard players set @s shearActionsCooldown 6000