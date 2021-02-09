# Wait for a bit, then go to menu

scoreboard players add $Tick md_state 1
execute if score $Tick md_state matches 600 run function mob_dash:reset

clear @a[gamemode=!spectator]
gamemode spectator @a[gamemode=!spectator]
