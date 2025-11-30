### If enchanted player (@s) is flying fast enough, runs this function
# Distinguish between entities about to be damaged (isWindsheared) vs. the enchanted entity (isWindshearing)
execute as @e[dx=2,dy=2,dz=2] run tag @s add isWindsheared
tag @s remove isWindsheared
tag @s add isWindshearing

# Do leveled damage
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"enchantology:windshear",levels:1}]] run execute as @e[tag=isWindsheared] as @e[tag=isWindsheared] run damage @s 2 minecraft:player_attack by @p[tag=isWindshearing]
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"enchantology:windshear",levels:2}]] run execute as @e[tag=isWindsheared] as @e[tag=isWindsheared] run damage @s 4 minecraft:player_attack by @p[tag=isWindshearing]
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"enchantology:windshear",levels:3}]] run execute as @e[tag=isWindsheared] as @e[tag=isWindsheared] run damage @s 6 minecraft:player_attack by @p[tag=isWindshearing]
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"enchantology:windshear",levels:4}]] run execute as @e[tag=isWindsheared] as @e[tag=isWindsheared] run damage @s 8 minecraft:player_attack by @p[tag=isWindshearing]
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"enchantology:windshear",levels:5}]] run execute as @e[tag=isWindsheared] as @e[tag=isWindsheared] run damage @s 10 minecraft:player_attack by @p[tag=isWindshearing]

# Remove the tags
tag @e[tag=isWindsheared] remove isWindsheared
tag @e[tag=isWindshearing] remove isWindshearing
