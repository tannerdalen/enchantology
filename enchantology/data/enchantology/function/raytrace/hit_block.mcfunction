### Mark success
scoreboard players set @s ray_success 1

### Perform some functionality depending on what you want

# Harvesting
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:harvesting":1}}}}}] run function enchantology:harvesting/break_crop_lvl_one
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:harvesting":2}}}}}] run function enchantology:harvesting/break_crop_lvl_two
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"enchantology:harvesting":3}}}}}] run function enchantology:harvesting/break_crop_lvl_three