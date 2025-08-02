# Resets gravity attribute for all entities with active score
execute as @e[scores={isAffectedByGravity=1}] run attribute @s minecraft:gravity base reset
execute as @e[scores={isAffectedByGravity=1}] run scoreboard players reset @s isAffectedByGravity