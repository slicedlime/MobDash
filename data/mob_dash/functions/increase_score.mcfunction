# increase the score of team @s

scoreboard players operation @s md_score += $CurrentTargetScore md_state

tellraw @a [{"text": "Target killed by "}, {"selector":"@s"}, {"text": ", now at "}, {"score":{"objective": "md_score", "name": "@s"}, "color": "green"}, {"text": " points"}]
