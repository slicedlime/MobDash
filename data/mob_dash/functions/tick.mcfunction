# runs every tick

scoreboard players add $State md_state 0

execute if score $State md_state matches 0 run function mob_dash:tick_menu
execute if score $State md_state matches 1 run function mob_dash:tick_game
