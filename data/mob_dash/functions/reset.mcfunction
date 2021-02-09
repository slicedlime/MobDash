# Reset back to menu state

scoreboard players set $State md_state 0
scoreboard players reset * md_score
scoreboard players reset * md_score_display
scoreboard players reset * md_player_scores

tp @a ~ ~ ~
spreadplayers ~ ~ 16 16 false @a
