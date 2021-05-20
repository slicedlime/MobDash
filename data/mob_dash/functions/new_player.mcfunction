# Runs for every player on first join_team

scoreboard players set $Random md_state 0

function mob_dash:randomize_bit
function mob_dash:randomize_bit
function mob_dash:randomize_bit

scoreboard players add $Random md_state 101
scoreboard players operation @s md_action = $Random md_state

tag @s add md_assigned
