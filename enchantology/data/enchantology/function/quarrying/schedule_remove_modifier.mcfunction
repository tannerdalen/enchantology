### Checks all current hands for enchantment, otherwise removed modifier
execute as @a unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"enchantology:quarrying"}]] run item modify entity @s weapon.mainhand enchantology:quarrying/remove_modifier