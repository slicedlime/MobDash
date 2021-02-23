# increase the score of team @s

execute if score $Scoring md_state matches 1 run scoreboard players add @s md_score 1
execute if score $Scoring md_state matches 0 run scoreboard players operation @s md_score += @e[type=area_effect_cloud,tag=md_selected] md_reward

tellraw @a [{"text": "Target killed by "}, {"selector":"@s"}, {"text": ", now at "}, {"score":{"objective": "md_score", "name": "@s"}, "color": "green"}, {"text": " points"}]
