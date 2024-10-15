### Play an assortment of sounds with a low likelihood

# Mobs
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.creeper.primed player @s ~ ~ ~-2 0.1 1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.creeper.hurt player @s ~ ~ ~ 0.05 1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.allay.death player @s ~ ~ ~ 10 0.5
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.allay.hurt player @s ~-10 ~ ~ 10 2
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.allay.item_thrown player @s ~-10 ~ ~ 10 2
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.zombie.ambient player @s ~ ~ ~ 0.2 1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.skeleton.step player @s ~ ~ ~10 0.05 1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.generic.small_fall player @s ~ ~ ~ 0.1 1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:entity.phantom.swoop player @s ~ ~10 ~ 1 0.9

# Ambient
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:ambient.soul_sand_valley.mood player @s ~ ~ ~-2 0.05 1

# Blocks
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:block.azalea.place player @s ~ ~ ~-2 0.1 0.1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:block.lodestone.place player @s ~-5 ~ ~ 10 0.1
execute as @s[predicate=enchantology:probability_00001389] run playsound minecraft:block.note_block.banjo player @s ~ ~ ~5 1 0.4 1