# Make mobs in radius aggro at enchanted entity, which sets some default "anger time" at each tick.
# If mob is out of radius or enchantment is unequipped, "anger time" will be exhausted as normal
execute as @e[distance=..16] run data modify entity @s angry_at set from entity @n[predicate=enchantology:revile_check_for_enchantment] UUID