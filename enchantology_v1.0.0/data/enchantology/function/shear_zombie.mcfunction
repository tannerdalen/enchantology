# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 16

# Message to send attacker if actions depleted
execute if entity @s[scores={shearActionsRemaining=0}] as @s run tellraw @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}] {"text":"You've already gnashed the flesh off its bones...", "color":"gray", "italic":true}
execute if entity @s[scores={shearActionsRemaining=0}] as @s run tellraw @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] {"text":"You've already gnashed the flesh off its bones...", "color":"gray", "italic":true}

# Drop an iron ingot at the location of the Iron Golem if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:rotten_flesh",Count:1}}

# Special: KILL ZOMBIE if all rotten flesh has been sliced off
execute if entity @s[scores={shearActionsRemaining=0}] as @s run damage @s 999 minecraft:player_attack by @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}]
execute if entity @s[scores={shearActionsRemaining=0}] as @s run damage @s 999 minecraft:player_attack by @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}]

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1