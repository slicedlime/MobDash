# on datapack load

scoreboard objectives add md_state dummy "Mob Dash Game State"

# Menu states
scoreboard objectives add md_ticks dummy "Mob Dash Menu Ticks"
scoreboard objectives add md_action trigger "Mob Dash Menu Actions"
scoreboard objectives add WinScore trigger "Mob Dash Win Score"
scoreboard objectives add TimeLimit trigger "Mob Dash Time Limit"

# Game states
scoreboard objectives add md_target dummy "Mob Dash Target ID"
scoreboard objectives add md_team dummy "Mob Dash Team ID"
scoreboard objectives add md_const dummy "Mob Dash Constants"
scoreboard objectives add md_score dummy "Mob Dash Team Scores"
scoreboard objectives add md_score_display dummy "Team Scores"
scoreboard objectives add md_player_scores dummy "Scores"
scoreboard objectives setdisplay list md_player_scores

function mob_dash:create_target_scoreboards

scoreboard players set 2 md_const 2
scoreboard players set 1200 md_const 1200

scoreboard players add $Target md_state 0
scoreboard players add $Level md_state 0
scoreboard players add $Win md_state 0
scoreboard players add $Timeout md_state 0

scoreboard players add $Scoring md_state 0
scoreboard players add $Difficulty md_state 0

execute store result score $Temp md_state run difficulty
execute if score $Temp md_state matches 1.. run scoreboard players operation $GameDifficulty md_state = $Temp md_state

function mob_dash:update_scoring_text
function mob_dash:update_difficulty_text

execute unless entity @e[type=minecraft:area_effect_cloud,tag=md_target] run function mob_dash:create_targets
execute unless entity @e[type=minecraft:area_effect_cloud,tag=md_team] run function mob_dash:create_teams
