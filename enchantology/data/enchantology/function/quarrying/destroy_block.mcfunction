# This function is called when item enchanted with "Quarrying" hits a block
# Checks if both Efficiency 5 and Haste II are active
execute if predicate enchantology:quarrying_check_active_effects run execute if block ~ ~ ~ deepslate run fill ~ ~ ~ ~ ~ ~ air destroy