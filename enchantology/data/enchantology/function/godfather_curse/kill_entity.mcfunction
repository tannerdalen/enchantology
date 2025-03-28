### "Explode" the player

execute as @s run particle minecraft:explosion ~ ~ ~ ~ ~ ~ 10 50 normal
execute as @s run playsound entity.generic.explode master @s ~ ~ ~ 2 1

gamerule showDeathMessages false
tellraw @a {"translate":"%s was blown up by Emilio Barzini","with":[{"selector":"@s"}]}
kill @s
gamerule showDeathMessages true