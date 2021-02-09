# End the game, display results, set post-game states

scoreboard players set $State md_state 2

scoreboard players set $Max md_score 0
scoreboard players operation $Max md_score > @e[type=area_effect_cloud,tag=md_team] md_score

tag @e[type=area_effect_cloud,tag=md_winner] remove md_winner
execute as @e[type=area_effect_cloud,tag=md_team] if score @s md_score = $Max md_score run tag @s add md_winner

execute store result score $WinningTeams md_state if entity @e[type=area_effect_cloud,tag=md_winner]

execute if score $WinningTeams md_state matches 2.. run title @a subtitle [{"text":"It's a draw!","color": "gold"}]
execute if score $WinningTeams md_state matches 1 run title @a subtitle ["",{"text":"Team ","color": "gold"},{"selector":"@e[type=area_effect_cloud,tag=md_winner]"},{"text":" wins!","color":"gold"}]
title @a title "Game Over"

scoreboard players set $Tick md_state 0

execute if score $WinningTeams md_state matches 2.. run tellraw @a [{"text":"It's a draw!","color": "gold"}]
execute if score $WinningTeams md_state matches 1 run tellraw @a ["",{"text":"Team ","color": "gold"},{"selector":"@e[type=area_effect_cloud,tag=md_winner]"},{"text":" wins!","color":"gold"}]

tellraw @a "Returning to menu in 60 seconds..."
