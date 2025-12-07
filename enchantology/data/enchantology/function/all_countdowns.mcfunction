### This function reduces all active countdowns by 1 each tick.
### VERIFY that each scoreboard below is intialized in load.json!

# Brutality
execute as @e[scores={bleedDuration=1..}] run scoreboard players remove @s bleedDuration 1
# Heartguard
execute as @e[scores={heartguardCooldown=1..}] run scoreboard players remove @s heartguardCooldown 1 