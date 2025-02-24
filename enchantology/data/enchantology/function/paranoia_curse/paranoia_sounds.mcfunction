### Play an assortment of sounds with a low likelihood (1/20,000 per tick -> 1/1000 per second)

# Mobs
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.creeper.primed player @s ~ ~ ~-2 0.1 1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.creeper.hurt player @s ~ ~ ~ 0.05 1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.allay.death player @s ~ ~ ~ 10 0.5
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.allay.hurt player @s ~-10 ~ ~ 10 2
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.allay.item_thrown player @s ~-10 ~ ~ 10 2
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.zombie.ambient player @s ~ ~ ~ 0.2 1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.skeleton.step player @s ~ ~ ~10 0.05 1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.generic.small_fall player @s ~ ~ ~ 0.1 1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:entity.phantom.swoop player @s ~ ~10 ~ 1 0.9

# Ambient
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:ambient.soul_sand_valley.mood player @s ~ ~ ~-2 0.05 1

# Blocks
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:block.azalea.place player @s ~ ~ ~-2 0.1 0.1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:block.lodestone.place player @s ~-5 ~ ~ 10 0.1
execute if predicate {condition:"minecraft:random_chance", chance:0.0005} as @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~5 1 0.4 1