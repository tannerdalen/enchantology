### Create marker for one tick to "save" player position
execute on attacker as @s at @s run summon minecraft:marker ~ ~ ~ {Tags:[transposition_pos1]}

### Give tag to struck entity
tag @s add transposition_pos2

### Teleport player to struck entity, then teleport entity to saved position
execute on attacker run tp @n[tag=transposition_pos2,limit=1]
tp @s @n[type=marker,tag=transposition_pos1,limit=1]

### Kill marker, remove tag from struck entity
kill @e[type=marker,tag=transposition_pos1]
tag @s remove transposition_pos2
