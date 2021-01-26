# Randomize one bit onto $Random in md_state

scoreboard players operation $Random md_state *= 2 md_const
execute as @e[type=area_effect_cloud,tag=md_random,limit=1,sort=random] if entity @s[tag=md_true] run scoreboard players add $Random md_state 1
