### Long execute command, sorry. This avoids hitting air AND crops that are not fully grown.
execute unless block ~ ~ ~ minecraft:air run function enchantology:raytrace/hit_block
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function enchantology:raytrace/ray