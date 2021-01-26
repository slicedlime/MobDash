# increase the score of team @s

scoreboard players add @s md_score 1
tellraw @a [{"text": "Target killed by "}, {"selector":"@s"}, {"text": ", now at "}, {"score":{"objective": "md_score", "name": "@s"}, "color": "green"}, {"text": " points"}]
