# Kill arrow that just spawned
kill @s 

# Initialize ray
execute as @n[nbt={SelectedItem:{components:{"minecraft:enchantments":{"enchantology:shrieking":1}}}}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function enchantology:shrieking/start_ray
execute as @n[nbt={SelectedItem:{components:{"minecraft:enchantments":{"enchantology:shrieking":1}}}}] at @s run playsound entity.warden.sonic_boom master @a ~ ~ ~ 1 1