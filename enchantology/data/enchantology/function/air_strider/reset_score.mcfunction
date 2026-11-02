# Function should only execute when player is on the ground OR if player just used their impulse
# 0.4 second buffer (8 ticks) + 1.8 second window to jump (36 ticks) = 44 ticks
execute as @s run scoreboard players set @s airStriderJumpTimer 44