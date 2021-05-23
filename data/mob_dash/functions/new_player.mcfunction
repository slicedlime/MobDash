# Runs for every player on first join_team

execute if score $OpOnly md_state matches 1 run function mob_dash:welcome

execute unless score @s SetTeam matches 1.. run function mob_dash:randomize_team
function mob_dash:join_team

tag @s add md_assigned
