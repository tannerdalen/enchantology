### Remove old item modifiers from affected items. Meant to repeat in a repeating command block when redstone activated.
### NOTE: REQUIRES SPRUCE_CHEST_BOAT NEARBY!

# Use spruce chest boat as item storage AND scorekeeper
scoreboard players add @n[type=minecraft:spruce_chest_boat] fix_quarrying_iterator 0
execute store result storage enchantology:fix_quarrying_iterator_index index int 1 run scoreboard players get @n[type=minecraft:spruce_chest_boat] fix_quarrying_iterator

# Remove the NBT component if in this spruce chest, then add 1 to iterator
execute as @n[type=minecraft:spruce_chest_boat] run function enchantology:quarrying/fixes/remove_data with storage enchantology:fix_quarrying_iterator_index
scoreboard players add @n[type=minecraft:spruce_chest_boat] fix_quarrying_iterator 1

# Reset score if exceeds single-chest slots
execute if entity @n[type=minecraft:spruce_chest_boat,scores={fix_quarrying_iterator=26}] run scoreboard players set @n[type=minecraft:spruce_chest_boat] fix_quarrying_iterator 0