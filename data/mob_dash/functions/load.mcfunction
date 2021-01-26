# on datapack load

scoreboard objectives add md_state dummy "Mob Dash Game State"
scoreboard objectives add md_target dummy "Mob Dash Target ID"
scoreboard objectives add md_team dummy "Mob Dash Team ID"
scoreboard objectives add md_const dummy "Mob Dash Constants"

scoreboard players set 2 md_const 2

scoreboard players add $Target md_state 0
scoreboard players add $Level md_state 0

execute unless entity @e[type=minecraft:area_effect_cloud,tag=md_target] run function mob_dash:create_targets
execute unless entity @e[type=minecraft:area_effect_cloud,tag=md_team] run function mob_dash:create_teams
