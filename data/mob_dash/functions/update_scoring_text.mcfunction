# Update the scoring type text

execute if score $Scoring md_state matches 0 run data merge storage mob_dash:data {Scoring:"Progressive"}
execute if score $Scoring md_state matches 1 run data merge storage mob_dash:data {Scoring:"Flat"}
