# Calculate the reward for the current target

scoreboard players operation $CurrentTargetScore md_state = $TargetTime md_state
scoreboard players operation $CurrentTargetScore md_state += ScorePeriod md_const
scoreboard players remove $CurrentTargetScore md_state 1
scoreboard players operation $CurrentTargetScore md_state /= ScorePeriod md_const

execute if score $CurrentTargetScore md_state matches 6.. run scoreboard players set $CurrentTargetScore md_state 5

execute if score $Scoring md_state matches 1 run scoreboard players set $CurrentTargetScore md_state 1
