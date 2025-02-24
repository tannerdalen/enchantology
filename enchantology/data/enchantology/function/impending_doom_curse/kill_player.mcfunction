# Kill the player
gamerule showDeathMessages false
tellraw @a {"translate":"%s succumbed to their impending doom","with":[{"selector":"@s"}]}
kill @s
gamerule showDeathMessages true