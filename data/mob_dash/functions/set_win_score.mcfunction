# Set the winning score

scoreboard players operation $Win md_state = @s WinScore
execute if score $Win md_state matches ..-1 run scoreboard players set $Win md_state 0

function mob_dash:display_menu
