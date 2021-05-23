# Store a random team id into md_team

scoreboard players set $Random md_state 0

function mob_dash:randomize_bit
function mob_dash:randomize_bit
function mob_dash:randomize_bit

scoreboard players add $Random md_state 1
scoreboard players operation @s SetTeam = $Random md_state
