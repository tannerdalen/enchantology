### Mark success
scoreboard players set @s ray_success 1

### Perform some functionality depending on what you want

# Harvesting
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:harvesting",levels:1}]] run function enchantology:harvesting/break_crop_lvl_one
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:harvesting",levels:2}]] run function enchantology:harvesting/break_crop_lvl_two
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:harvesting",levels:3}]] run function enchantology:harvesting/break_crop_lvl_three