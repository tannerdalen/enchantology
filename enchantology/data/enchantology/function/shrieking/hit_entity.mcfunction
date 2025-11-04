### Mark success (this will glitch if two players shoot a shrieking arrow on the same tick!)
scoreboard players set @a[tag=shotShriekingArrow] ray_success 1
scoreboard players reset @a[tag=shotShriekingArrow] shriekingParticleTally

### Decay damage based on distance
execute as @s if entity @n[tag=shotShriekingArrow, distance=..3] run damage @s 14 minecraft:sonic_boom by @n[tag=shotShriekingArrow]
execute as @s if entity @n[tag=shotShriekingArrow, distance=3..15] run damage @s 10 minecraft:sonic_boom by @n[tag=shotShriekingArrow]
execute as @s if entity @n[tag=shotShriekingArrow, distance=15..] run damage @s 6 minecraft:sonic_boom by @n[tag=shotShriekingArrow]

### Remove tag
execute as @a[tag=shotShriekingArrow] run tag @s remove shotShriekingArrow