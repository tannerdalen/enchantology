### Restore max_health and reset scoreboards once curse is removed.
### NOTE: This function is executed for every player not wearing impending doom!
execute as @a unless items entity @s armor.* *[minecraft:enchantments~[{enchantments:"enchantology:impending_doom_curse"}]] run attribute @s minecraft:max_health modifier remove impending_doom_modifier
execute as @a unless items entity @s armor.* *[minecraft:enchantments~[{enchantments:"enchantology:impending_doom_curse"}]] run scoreboard players reset @s impendingDoomTimer
execute as @a unless items entity @s armor.* *[minecraft:enchantments~[{enchantments:"enchantology:impending_doom_curse"}]] run scoreboard players reset @s impendingDoomHealthRemoved