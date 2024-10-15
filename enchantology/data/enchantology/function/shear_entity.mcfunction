### All shear attempts are made in this function, depending on enchantment level and entity being attacked

### Lvl 1

# Cow
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":1}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:cow] run function enchantology:shear_cow
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:cow] run function enchantology:shear_cow
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:cow] run function enchantology:shear_cow

# Sheep
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":1}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:shear_sheep
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:shear_sheep
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:sheep,nbt={Sheared:true}] run function enchantology:shear_sheep

# Pig
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":1}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:pig] run function enchantology:shear_pig
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:pig] run function enchantology:shear_pig
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:pig] run function enchantology:shear_pig

### Lvl 2

# Zombie
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:zombie] run function enchantology:shear_zombie
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:zombie] run function enchantology:shear_zombie

# Skeleton
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":2}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:skeleton] run function enchantology:shear_skeleton
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:skeleton] run function enchantology:shear_skeleton

### Lvl 3

# Iron golem
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:iron_golem] run function enchantology:shear_iron_golem

# Enderman
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:butchery":3}}}, count: 1, id: "minecraft:shears"}}] if entity @s[type=minecraft:enderman] run function enchantology:shear_enderman