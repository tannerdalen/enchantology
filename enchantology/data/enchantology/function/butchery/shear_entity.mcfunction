### Shear a specific entity (@s)

execute if entity @s[type=minecraft:cow] run function enchantology:butchery/shear_cow
execute if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:butchery/shear_sheep
execute if entity @s[type=minecraft:pig] run function enchantology:butchery/shear_pig
execute if entity @s[type=minecraft:zombie] run function enchantology:butchery/shear_zombie
execute if entity @s[type=minecraft:skeleton] run function enchantology:butchery/shear_skeleton
execute if entity @s[type=minecraft:iron_golem] run function enchantology:butchery/shear_iron_golem
execute if entity @s[type=minecraft:enderman] run function enchantology:butchery/shear_enderman