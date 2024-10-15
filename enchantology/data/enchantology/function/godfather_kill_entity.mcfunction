### It's likely the actual tnt explosion won't kill the player.
### Instead, TNT will explode and then the player is "killed" by
### another entity who is summoned at immediately killed.

summon minecraft:villager ~ ~255 ~ {NoAI:true,CustomName:"{\"text\":\"Emilio Barzini\"}"}
# summon minecraft:tnt ~ ~ ~ 
execute as @e[name="Emilio Barzini"] run damage @p 999999 minecraft:player_explosion by @s
kill @e[name="Emilio Barzini"]