scoreboard players remove $LoadCheck md_state 1

execute if score $LoadCheck md_state matches 0 unless entity @e[type=minecraft:area_effect_cloud,tag=md_target] run function mob_dash:create_targets
execute if score $LoadCheck md_state matches 0 unless entity @e[type=minecraft:area_effect_cloud,tag=md_team] run function mob_dash:create_teams

execute if score $LoadCheck md_state matches 0 run scoreboard players reset $LoadCheck md_state