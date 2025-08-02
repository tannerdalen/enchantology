# Get player position (X and Z only)
execute store result score @s pos_x run data get entity @s Pos[0] 1000
execute store result score @s pos_z run data get entity @s Pos[2] 1000

# Store if player is magnetized to avoid items being directed towards wrong player
scoreboard players set @s isMagnetized 1

# Get item positions (X and Z only)
execute as @e[distance=..5,type=item] store result score @s pos_x as @s run data get entity @s Pos[0] 1000
execute as @e[distance=..5,type=item] store result score @s pos_z as @s run data get entity @s Pos[2] 1000

# Do the math (get difference in position)
execute as @e[distance=..5,type=item] run scoreboard players operation @s pos_x -= @n[scores={isMagnetized=1},distance=..5] pos_x
execute as @e[distance=..5,type=item] run scoreboard players operation @s pos_z -= @n[scores={isMagnetized=1},distance=..5] pos_z

# Apply motion to items (scale for speed)
execute as @e[distance=..5,type=item] store result entity @s Motion[0] double -0.00007 run scoreboard players get @s pos_x
execute as @e[distance=..5,type=item] store result entity @s Motion[2] double -0.00007 run scoreboard players get @s pos_z

# Reset isMagnetized score to avoid items being directed to players that have unequipped enchantment
scoreboard players reset @s isMagnetized