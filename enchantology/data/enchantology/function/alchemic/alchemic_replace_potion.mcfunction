# At this point, potion is assumed drank, potion type stored, and glass bottle now left in inventory.
# RTD to consume or not consume the potion, store success if unconsumed
data merge storage enchantology:item_replaced {was_item_replaced:0b}
execute if predicate {"condition": "minecraft:random_chance","chance": 0.3} run execute store success storage enchantology:item_replaced was_item_replaced byte 1 run item replace entity @s[nbt={Inventory:[{Slot:103b, components:{"minecraft:enchantments":{levels:{"enchantology:alchemic":1}}}}]}] weapon.mainhand from entity @s player.crafting.0

# If successful...
execute if data storage enchantology:item_replaced {was_item_replaced:1b} run playsound minecraft:block.brewing_stand.brew block @s ~ ~ ~ 2 2

# Reset item_replaced, remove item from the crafting slot, then remove the advancements
data merge storage enchantology:item_replaced {was_item_replaced:0b}
item modify entity @s player.crafting.0 {"function":"set_count",count:0}
advancement revoke @s only enchantology:alchemic_drank_potion
advancement revoke @s only enchantology:alchemic_check_bottle
