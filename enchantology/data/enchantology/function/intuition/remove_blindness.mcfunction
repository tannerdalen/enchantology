# Remove blindness from player if not using bow with Intuition
execute as @a if entity @s[advancements={enchantology:intuition/using_bow=false}] run effect clear @s minecraft:blindness