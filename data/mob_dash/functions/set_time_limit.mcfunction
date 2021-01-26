# Set the time limit

scoreboard players operation $Timeout md_state = @s TimeLimit
execute if score $Timeout md_state matches ..-1 run scoreboard players set $Timeout md_state 0

function mob_dash:display_menu
