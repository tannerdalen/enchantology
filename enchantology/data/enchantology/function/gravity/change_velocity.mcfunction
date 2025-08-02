# Add tag for impacted entities, adjust gravity attribute, fix attribute in the next tick
execute as @s run scoreboard players set @s isAffectedByGravity 1
execute as @s run attribute @s minecraft:gravity base set 10
schedule function enchantology:gravity/reset_gravity 1s

# Not all mobs are influenced by attribute "gravity" (e.g., Ghast), therefore artificially shoot 
# entity downwards in addition to increasing gravity for a short duration.
execute as @s run data modify entity @s Motion[1] set value -10.0d

# Play a sound
execute as @s run playsound entity.warden.attack_impact master @s ~ ~ ~ 1 1