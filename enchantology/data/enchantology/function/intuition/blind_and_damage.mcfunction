### Upon using a bow with the Intuition enchantment, and you are not already blinded, 
### an advancement is earned which runs this function.

# Blind @s
execute as @s run effect give @s minecraft:blindness infinite

# Remove advancement and schedule function to remove blindness when advancement still revoked
execute as @s run advancement revoke @s only enchantology:intuition/using_bow
schedule function enchantology:intuition/remove_blindness 1t
