### Unequipping armor with revile curse won't reset isReviled. This is done every tick if no one is wearing the curse.

execute as @e[scores={isReviled=1}] unless entity @p[predicate=enchantology:revile_check_for_enchantment,distance=..16] run scoreboard players reset @s isReviled