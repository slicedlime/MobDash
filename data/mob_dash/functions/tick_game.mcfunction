# runs every tick

execute if score $Target md_state matches 0 run function mob_dash:new_target

scoreboard players add $TargetTime md_state 1
function mob_dash:calculate_target_score

function mob_dash:detect_kill
function mob_dash:update_scores

execute unless score $Win md_state matches 0 run function mob_dash:check_win_score
execute unless score $Timeout md_state matches 0 run function mob_dash:check_time_limit

execute if score $CurrentTargetScore md_state matches 1 run title @a actionbar ["",{"text":"Target: ","color":"gold"},{"selector":"@e[type=area_effect_cloud,tag=md_selected]","color":"red"}, {"text": " (", "color":"gold"}, {"score": {"name": "$CurrentTargetScore", "objective": "md_state"}, "color":"gold"}, {"text": " point)", "color":"gold"}]
execute unless score $CurrentTargetScore md_state matches 1 run title @a actionbar ["",{"text":"Target: ","color":"gold"},{"selector":"@e[type=area_effect_cloud,tag=md_selected]","color":"red"}, {"text": " (","color":"gold"}, {"score": {"name": "$CurrentTargetScore", "objective": "md_state"}, "color":"gold"}, {"text": " points)","color":"gold"}]

execute if score $EndTick md_state matches 1.. run function mob_dash:update_timer_bar
