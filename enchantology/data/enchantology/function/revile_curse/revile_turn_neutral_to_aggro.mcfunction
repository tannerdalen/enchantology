### Mobs might already be angry, or become angry for random reasons, outside of this enchantment.
### To avoid this, the isReviled scoreboard is used to avoid removing anger from a mob
### that should be angry for other reasons.

### All neutral mobs as of 1.21.1 are included here

execute as @e[type=#enchantology:revile,distance=..16] run scoreboard players set @s isReviled 1

### Make mobs angry at nearest entity with revile curse
execute as @e[scores={isReviled=1}] run data modify entity @s AngryAt set from entity @n[predicate=enchantology:revile_check_for_enchantment] UUID
execute as @e[scores={isReviled=1}] run data modify entity @s AngerTime set value 20

### Remove anger and revile from mobs outside radius
# First 'execute' below throws error in spyglassmc(1.21.4) but it works just fine in game
execute as @e[distance=16..,scores={isReviled=1}] run data modify entity @s AngryAt set value []
execute as @e[distance=16..,scores={isReviled=1}] run data modify entity @s AngerTime set value 0
execute as @e[distance=16..,scores={isReviled=1}] run scoreboard players reset @s isReviled