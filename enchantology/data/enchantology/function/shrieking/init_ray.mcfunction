# Initialize ray
execute as @n[nbt={SelectedItem:{components:{"minecraft:enchantments":{"enchantology:shrieking":1}}}}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function enchantology:shrieking/start_ray
execute as @n[nbt={SelectedItem:{components:{"minecraft:enchantments":{"enchantology:shrieking":1}}}}] at @s run playsound entity.warden.sonic_boom master @s ~ ~ ~ 1 1

# Reset charge up sound
execute as @n[nbt={SelectedItem:{components:{"minecraft:enchantments":{"enchantology:shrieking":1}}}}] run advancement revoke @s only enchantology:shrieking/drawing_bow

# Kill arrow that just spawned
kill @s 