# Update the scoring type text

execute if score $Difficulty md_state matches 0 run data merge storage mob_dash:data {Difficulty:"Easy"}
execute if score $Difficulty md_state matches 1 run data merge storage mob_dash:data {Difficulty:"Medium"}
execute if score $Difficulty md_state matches 2 run data merge storage mob_dash:data {Difficulty:"Hard"}
