### Prevent fall damage from being taken by entity (@e) if landing on block in a given region surrounding the arrow with tag "cushioned".
### The first execution of this function is made after hitting a block.

# Initialize scoreboard, i.e., timer
execute as @e[type=arrow,tag=cushioned] run scoreboard players add @s cushioningActiveTimer 1

# Reset fall_distance for each NON-PLAYER entity near arrow
execute as @e[type=arrow,tag=cushioned] at @s run execute as @e[distance=..5] at @s run data modify entity @s fall_distance set value 0.0d

# Reset fall_distance for each PLAYER entity near arrow (since you can't modify player data)
execute as @e[type=arrow,tag=cushioned] at @s run execute as @a[distance=..5] at @s run tag @s add beingCushioned
execute as @e[type=arrow,tag=cushioned] at @s run execute as @a[distance=..5] at @s run attribute @s fall_damage_multiplier base set 0.0
schedule function enchantology:cushioning/restore_fall_damage_multiplier 5t

# Remove tag if score exceeds max
execute as @e[type=arrow,tag=cushioned,scores={cushioningActiveTimer=200}] run tag @s remove cushioned

# Run this function again in 1 tick if score is low enough
execute if entity @e[type=arrow,tag=cushioned,scores={cushioningActiveTimer=..200}] run schedule function enchantology:cushioning/prevent_fall_damage 1t