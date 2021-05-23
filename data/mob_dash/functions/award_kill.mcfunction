# Award score reward to the team of @s

tag @s add md_current
execute as @e[type=area_effect_cloud,tag=md_team] if score @s md_team = @p[tag=md_current] md_team run function mob_dash:increase_score
execute as @a[scores={md_team=1..8}] if score @s md_team = @p[tag=md_current] md_team at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.6
execute as @a[scores={md_team=1..8}] unless score @s md_team = @p[tag=md_current] md_team at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
tag @s remove md_current

scoreboard players set $Target md_state 0
