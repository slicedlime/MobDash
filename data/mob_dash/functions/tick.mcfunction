# runs every tick

execute if score $LoadCheck md_state matches 1..20 run function mob_dash:load_check

scoreboard players add $State md_state 0

execute if score $State md_state matches 0 run function mob_dash:tick_menu
execute if score $State md_state matches 1 run function mob_dash:tick_game
execute if score $State md_state matches 2 run function mob_dash:tick_post_game
