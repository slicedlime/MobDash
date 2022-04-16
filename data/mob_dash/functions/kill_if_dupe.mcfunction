data modify storage mob_dash:dedupe check set from storage mob_dash:dedupe data
scoreboard players set $dedupe md_state 0
execute store success score $dedupe md_state run data modify storage mob_dash:dedupe data set from entity @s CustomName
execute if score $dedupe md_state matches 1.. run kill @s
scoreboard players reset $dedupe md_state
