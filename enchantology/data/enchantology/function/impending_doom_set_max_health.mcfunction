# Initialize countdown
execute as @s if entity @s[scores={impendingDoomCurse=0}] run scoreboard players set @s impendingDoomCurse 2000

# Decrease maximum health by half a heart every 5 seconds (100 ticks)
execute as @s[scores={impendingDoomCurse=1900}] run attribute @s minecraft:max_health base set 19
execute as @s[scores={impendingDoomCurse=1800}] run attribute @s minecraft:max_health base set 18
execute as @s[scores={impendingDoomCurse=1700}] run attribute @s minecraft:max_health base set 17
execute as @s[scores={impendingDoomCurse=1600}] run attribute @s minecraft:max_health base set 16
execute as @s[scores={impendingDoomCurse=1500}] run attribute @s minecraft:max_health base set 15
execute as @s[scores={impendingDoomCurse=1400}] run attribute @s minecraft:max_health base set 14
execute as @s[scores={impendingDoomCurse=1300}] run attribute @s minecraft:max_health base set 13
execute as @s[scores={impendingDoomCurse=1200}] run attribute @s minecraft:max_health base set 12
execute as @s[scores={impendingDoomCurse=1100}] run attribute @s minecraft:max_health base set 11
execute as @s[scores={impendingDoomCurse=1000}] run attribute @s minecraft:max_health base set 10
execute as @s[scores={impendingDoomCurse=900}] run attribute @s minecraft:max_health base set 9
execute as @s[scores={impendingDoomCurse=800}] run attribute @s minecraft:max_health base set 8
execute as @s[scores={impendingDoomCurse=700}] run attribute @s minecraft:max_health base set 7
execute as @s[scores={impendingDoomCurse=600}] run attribute @s minecraft:max_health base set 6
execute as @s[scores={impendingDoomCurse=500}] run attribute @s minecraft:max_health base set 5
execute as @s[scores={impendingDoomCurse=400}] run attribute @s minecraft:max_health base set 4
execute as @s[scores={impendingDoomCurse=300}] run attribute @s minecraft:max_health base set 3
execute as @s[scores={impendingDoomCurse=200}] run attribute @s minecraft:max_health base set 2
execute as @s[scores={impendingDoomCurse=100}] run attribute @s minecraft:max_health base set 1

# To avoid any nasty glitches, maximum health is restore upon impendingDoomCurse == 1, then player is killed manually
execute as @s[scores={impendingDoomCurse=1}] run attribute @s minecraft:max_health base set 20
kill @s[scores={impendingDoomCurse=1}]