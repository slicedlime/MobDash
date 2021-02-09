# Switch between progressive and flat Scoring

scoreboard players add $Scoring md_state 1
execute if score $Scoring md_state matches 2 run scoreboard players set $Scoring md_state 0

function mob_dash:update_scoring_text
function mob_dash:display_menu
