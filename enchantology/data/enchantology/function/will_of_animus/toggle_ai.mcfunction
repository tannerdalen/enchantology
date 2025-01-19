### Trying to toggle values with a single function sucks. This is my best attempt,
### using a incrementing tally whose value is updated modulo 2 every time the func
### is called, i.e., 0 --> 1 --> 0 --> 1 --> 0 --> ...

### Initialize modulo
# execute unless entity @s[scores={modulo2=2}] run scoreboard players set @s modulo2 2

### Store score from hasNoAI mod 2 to itself. Should return score hasNoAI=0 if hasNoAI is 
### unassigned, i.e., the first execution.
# execute store result score @s hasNoAI run scoreboard players operation @s hasNoAI %= @s modulo2

### At this point, do whatever you want (like toggle AI in my case) depending on if
### hasNoAI == 0 or 1
# execute as @s[scores={hasNoAI=0}] run data modify entity @s NoAI set value 1
# execute as @s[scores={hasNoAI=1}] run data modify entity @s NoAI set value 0

### Increment hasNoAI scoreboard for next run
# scoreboard players add @s hasNoAI 1

execute store success entity @s hasNoAI byte 1 store success score @s hasNoAI unless score @s hasNoAI matches 1

execute as @s[scores={hasNoAI=1}] run data modify entity @s NoAI set value true
execute as @s[scores={hasNoAI=0}] run data modify entity @s NoAI set value false