# Kill the player
gamerule show_death_messages false
tellraw @a {"translate":"%s succumbed to their impending doom","with":[{"selector":"@s"}]}
kill @s
gamerule show_death_messages true