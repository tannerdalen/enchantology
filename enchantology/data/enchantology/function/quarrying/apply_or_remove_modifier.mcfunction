### Applies modifier to apply insta-mining deepslate
execute as @s[predicate=enchantology:quarrying/has_eff5_and_haste2_not_mod_yet] run item modify entity @s weapon.mainhand enchantology:quarrying/set_modifier

### Remove modifier if efficiency 5 or haste 2 are not present
execute as @s unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:efficiency",levels:5}]] run item modify entity @s weapon.mainhand enchantology:quarrying/remove_modifier
execute as @s unless entity @s[nbt={active_effects:[{id:"minecraft:haste",amplifier:1b}]}] run item modify entity @s weapon.mainhand enchantology:quarrying/remove_modifier

### In one tick, check if mainhand is still properly enchanted. If not, remove modifier
schedule function enchantology:quarrying/schedule_remove_modifier 1t