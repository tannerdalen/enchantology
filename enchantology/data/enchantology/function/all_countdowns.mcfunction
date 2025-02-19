### This function reduces all active countdowns by 1 each tick.
### VERIFY that each scoreboard below is intialized in load.json!

# bleedDuration, Brutality
execute as @e[scores={bleedDuration=1..}] run scoreboard players remove @s bleedDuration 1

# shearActionsCooldown, Butchery
execute as @e[scores={shearActionsCooldown=1..}] run scoreboard players remove @s shearActionsCooldown 1