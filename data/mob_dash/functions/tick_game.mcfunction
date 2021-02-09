# runs every tick

execute if score $Target md_state matches 0 run function mob_dash:new_target

function mob_dash:detect_kill
function mob_dash:update_scores

execute unless score $Win md_state matches 0 run function mob_dash:check_win_score
execute unless score $Timeout md_state matches 0 run function mob_dash:check_time_limit

title @a actionbar ["",{"text":"Target: ","color":"gold"},{"selector":"@e[type=area_effect_cloud,tag=md_selected]","color":"red"}]
