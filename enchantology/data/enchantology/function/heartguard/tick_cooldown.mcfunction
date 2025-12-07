# Initialize score
execute unless score @s blessingOfUndyingCooldown matches -2147483648..2147483647 run scoreboard players add @s blessingOfUndyingCooldown 0

# Countdown if > 0
execute as @s[scores={blessingOfUndyingCooldown=1..}] run scoreboard players remove @s blessingOfUndyingCooldown 1 