# Sure, gravity is acceleration, but flying mobs like ghasts appear unaffected by
# generic.gravity, therefore I cannot just change the attribute. Velocity must
# be manually adjusted.

# Note: this does not work on players (because player NBT cannot be edited which is dumb)
execute as @s run data merge entity @s {Motion:[0.0,-10.0,0.0]}