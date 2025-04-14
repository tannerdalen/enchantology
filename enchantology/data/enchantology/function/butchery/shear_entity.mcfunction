### All shear attempts are made in this function, depending on enchantment level and entity being attacked

### Lvl 1

# Cow
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:1}]] run execute if entity @s[type=minecraft:cow] run function enchantology:butchery/shear_cow
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run execute if entity @s[type=minecraft:cow] run function enchantology:butchery/shear_cow
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:cow] run function enchantology:butchery/shear_cow

# Sheep
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:1}]] run execute if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:butchery/shear_sheep
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run execute if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:butchery/shear_sheep
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:butchery/shear_sheep

# Pig
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:1}]] run execute if entity @s[type=minecraft:pig] run function enchantology:butchery/shear_pig
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run execute if entity @s[type=minecraft:pig] run function enchantology:butchery/shear_pig
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:pig] run function enchantology:butchery/shear_pig

### Lvl 2

# Zombie
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run execute if entity @s[type=minecraft:zombie] run function enchantology:butchery/shear_zombie
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:zombie] run function enchantology:butchery/shear_zombie

# Skeleton
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:2}]] run execute if entity @s[type=minecraft:skeleton] run function enchantology:butchery/shear_skeleton
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:skeleton] run function enchantology:butchery/shear_skeleton

### Lvl 3

# Iron golem
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:iron_golem] run function enchantology:butchery/shear_iron_golem

# Enderman
execute if items entity @p weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:butchery",levels:3}]] run execute if entity @s[type=minecraft:enderman] run function enchantology:butchery/shear_enderman