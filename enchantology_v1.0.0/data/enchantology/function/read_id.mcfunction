# function example:read_id
## Run this function as and at entity for read ID
tag @s add this
execute summon area_effect_cloud run ride @e[tag=this,limit=1] mount @s
tag @s remove this
execute on vehicle run data modify storage enchantology:domination mob_type set from entity @s Passengers[0].id
# tellraw @a ["This ID: ",{"storage":"enchantology:domination","nbt":"mob_type"}]