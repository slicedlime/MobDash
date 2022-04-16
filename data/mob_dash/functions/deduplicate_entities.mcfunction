execute store result score $DupeCount md_state if entity @e[type=area_effect_cloud,tag=md_true]

execute if score $DupeCount md_state matches 2.. as @e[type=area_effect_cloud] run function mob_dash:deduplicate
