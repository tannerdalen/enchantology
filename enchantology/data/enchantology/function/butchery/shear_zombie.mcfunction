# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 16

# Drop flesh from the zombie if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:rotten_flesh",count:1}}

# Special: KILL ZOMBIE if all rotten flesh has been sliced off
execute if entity @s[scores={shearActionsRemaining=0}] as @s run damage @s 999 minecraft:player_attack by @n[type=player,nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:enchantments":{"enchantology:butchery":1}}}}]
execute if entity @s[scores={shearActionsRemaining=0}] as @s run damage @s 999 minecraft:player_attack by @n[type=player,nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:enchantments":{"enchantology:butchery":1}}}}]

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1