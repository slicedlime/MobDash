tag @s add md_dedupe

data modify storage mob_dash:dedupe data set from entity @s CustomName
execute as @e[type=area_effect_cloud,tag=!md_dedupe] run function mob_dash:kill_if_dupe
tag @s remove md_dedupe
