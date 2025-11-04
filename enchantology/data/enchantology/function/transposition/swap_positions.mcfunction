### Create interaction entity for one tick to "save" player position
execute on attacker as @s at @s run summon minecraft:interaction ~ ~ ~ {Tags:[pos1]}

### Give tag to struck entity
tag @s add pos2

### Teleport player to struck entity, then teleport entity to saved position
execute on attacker run tp @n[tag=pos2,limit=1]
tp @s @n[type=interaction,tag=pos1,limit=1]

### Kill interaction entity, remove tag from struck entity
kill @e[type=interaction,tag=pos1]
tag @s remove pos2
