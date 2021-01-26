# Copy team score of @s to all players on team

tag @s add md_current
execute as @a if score @s md_team = @e[type=area_effect_cloud,tag=md_current,limit=1] md_team run scoreboard players operation @s md_player_scores = @e[type=area_effect_cloud,tag=md_current,limit=1] md_score

tag @s remove md_current
