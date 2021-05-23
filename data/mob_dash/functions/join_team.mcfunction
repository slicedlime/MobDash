# Join a team based on value in md_action

execute if score @s md_action matches 100.. run scoreboard players operation @s md_team = @s md_action
execute if score @s md_action matches 100.. run scoreboard players remove @s md_team 100
execute if score @s SetTeam matches 1.. run scoreboard players operation @s md_team = @s SetTeam

execute if score @s md_team matches 1 run team join red @s
execute if score @s md_team matches 2 run team join green @s
execute if score @s md_team matches 3 run team join yellow @s
execute if score @s md_team matches 4 run team join blue @s
execute if score @s md_team matches 5 run team join purple @s
execute if score @s md_team matches 6 run team join gold @s
execute if score @s md_team matches 7 run team join aqua @s
execute if score @s md_team matches 8 run team join black @s
execute if score @s md_team matches 9 run team join gray @s

tag @s add md_current
execute as @e[type=area_effect_cloud,tag=md_team] if score @s md_team = @p[tag=md_current] md_team run tellraw @a ["", {"selector":"@p[tag=md_current]"}, {"text":" has joined "}, {"selector": "@s"}]
tag @s remove md_current

scoreboard players reset @s SetTeam

function mob_dash:display_menu
