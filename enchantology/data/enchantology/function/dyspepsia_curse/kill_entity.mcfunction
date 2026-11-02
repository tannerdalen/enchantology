### Kill the player for eating/drinking a consumable
execute as @s run particle minecraft:noxious_gas ~ ~1 ~
execute as @s run playsound minecraft:entity.wandering_trader.drink_potion player @s ~ ~ ~ 10 0.3

gamerule minecraft:show_death_messages false
tellraw @a {"translate":"%s died of dyspepsia","with":[{"selector":"@s"}]}
kill @s
gamerule minecraft:show_death_messages true

### Revoke advancement
execute as @s run advancement revoke @s only enchantology:dyspepsia_curse/dyspepsia_consumable