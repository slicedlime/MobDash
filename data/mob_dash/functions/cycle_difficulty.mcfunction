# Switch between difficulty levels

scoreboard players add $Difficulty md_state 1
execute if score $Difficulty md_state matches 3 run scoreboard players set $Difficulty md_state 0

function mob_dash:update_difficulty_text
function mob_dash:display_menu
