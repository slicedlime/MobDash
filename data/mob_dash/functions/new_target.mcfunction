# Select a new target and display

execute if score $Level md_state matches 0 run scoreboard players set $Level md_state 1

scoreboard players operation $CurrentLevel md_state = $MobDifficulty md_state
scoreboard players operation $CurrentLevel md_state /= $DifficultyFactor md_state
scoreboard players add $CurrentLevel md_state 1
scoreboard players add $MobDifficulty md_state 1

# Figure out how many choices there are in level X
tag @e[type=area_effect_cloud,tag=md_eligible] remove md_eligible
execute as @e[type=area_effect_cloud,tag=md_target] if score @s md_level <= $CurrentLevel md_state run tag @s add md_eligible
scoreboard players set $Max md_state 0
scoreboard players operation $Max md_state > @e[type=area_effect_cloud,tag=md_eligible] md_target

# Randomize a number in [0-X)
function mob_dash:randomize
scoreboard players operation $Random md_state %= $Max md_state
scoreboard players add $Random md_state 1

tag @e[type=area_effect_cloud,tag=md_selected] remove md_selected
execute as @e[type=area_effect_cloud,tag=md_target] if score @s md_target = $Random md_state run tag @s add md_selected

# Display name of target
title @a title ""
title @a subtitle ["",{"text":"New Target: ","color":"gold"},{"selector":"@e[type=area_effect_cloud,tag=md_selected]","color":"red"}]
tellraw @a ["",{"text":"New Target: ","color":"gold"},{"selector":"@e[type=area_effect_cloud,tag=md_selected]","color":"red"}]

scoreboard players operation $Target md_state = $Random md_state
