# Assign shearActionsRemaining to entity if not assigned already
execute unless entity @s[scores={shearActionsRemaining=..999}] run scoreboard players set @s shearActionsRemaining 16

# Drop bone meal at the location of the skeleton if shear available
execute as @s unless entity @s[scores={shearActionsRemaining=0}] run summon item ~ ~1 ~ {Item:{id:"minecraft:bone_meal",count:1}}

# Special: KILL SKELETON if all bones have been severed off
execute if entity @s[scores={shearActionsRemaining=0}] run damage @s 999 minecraft:player_attack by @n[type=player,nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:enchantments":{"enchantology:butchery":1}}}}]
execute if entity @s[scores={shearActionsRemaining=0}] run damage @s 999 minecraft:player_attack by @n[type=player,nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:enchantments":{"enchantology:butchery":1}}}}]

# Subtract from shearActionsRemaining
execute unless entity @s[scores={shearActionsRemaining=0}] as @s run scoreboard players remove @s shearActionsRemaining 1