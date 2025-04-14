### This function is ran if player enters vehicle while wearing godfather curse.
### Attempt to kill, then revoke advancement.
execute if predicate {"condition": "minecraft:random_chance","chance": 0.05} as @s run function enchantology:godfather_curse/kill_entity
execute as @s run advancement revoke @s only enchantology:godfather_curse/enter_vehicle