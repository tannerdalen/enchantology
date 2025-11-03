### If you hit air or water, end ray
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:water run function enchantology:shrieking/hit_block

### If entity is near ray, damage entity and end ray
execute as @e[type=!arrow, type=!item, tag=!shotShriekingArrow, dx=0.4,dy=0.4,dz=0.4] at @s run function enchantology:shrieking/hit_entity

### Play particle every 4 steps
execute if score @s shriekingParticleTally matches 20 run scoreboard players set @s shriekingParticleTally 0
execute if score @s shriekingParticleTally matches 0 if score @s ray_success matches 0 run particle sonic_boom ~ ~ ~

### Remove one from ray tally, then move forward one and repeat
scoreboard players remove @s ray_steps 1
scoreboard players add @s shriekingParticleTally 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function enchantology:shrieking/ray