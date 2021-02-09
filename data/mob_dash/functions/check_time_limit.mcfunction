# Check if the game has ended on time limit

scoreboard players add $Tick md_state 1
execute if score $Tick md_state >= $EndTick md_state run function mob_dash:end_game
