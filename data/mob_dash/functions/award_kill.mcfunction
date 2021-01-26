# Award score reward to the team of @s

tag @s add md_current
execute as @e[type=area_effect_cloud,tag=md_team] if score @s md_team = @p[tag=md_current] md_team run scoreboard players add @s md_score 1
tag @s remove md_current

scoreboard players set $Target md_state 0
