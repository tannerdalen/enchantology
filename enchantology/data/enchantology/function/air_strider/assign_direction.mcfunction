# Function ran every tick, determines what direction the player is looking and assigns tag
# x_rotation -90..-60 = straight up
# x_rotation -59..-15 = up
# x_rotation -14..5  = front
# x_rotation 6..59   = down
# x_rotation 60..90   = straight down


execute as @s run tag @s remove airStriderFacingStraightUp
execute as @s run tag @s remove airStriderFacingUp
execute as @s run tag @s remove airStriderFacingFront
execute as @s run tag @s remove airStriderFacingDown
execute as @s run tag @s remove airStriderFacingStraightDown

execute if entity @s[x_rotation=-90..-60] run tag @s add airStriderFacingStraightUp
execute if entity @s[x_rotation=-59..-15] run tag @s add airStriderFacingUp
execute if entity @s[x_rotation=-14..5] run tag @s add airStriderFacingFront
execute if entity @s[x_rotation=6..59] run tag @s add airStriderFacingDown
execute if entity @s[x_rotation=60..90] run tag @s add airStriderFacingStraightDown