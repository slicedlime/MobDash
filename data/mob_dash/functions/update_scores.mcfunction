# Update display scoreboard from entities

scoreboard players operation §cThe_Redstone_Reapers md_score_display = @e[type=area_effect_cloud,scores={md_team=1},limit=1] md_score
scoreboard players operation §aThe_Charged_Creepers md_score_display = @e[type=area_effect_cloud,scores={md_team=2},limit=1] md_score
scoreboard players operation §eThe_Poisonous_Pufferfish md_score_display = @e[type=area_effect_cloud,scores={md_team=3},limit=1] md_score
scoreboard players operation §9The_Fearless_Phantoms md_score_display = @e[type=area_effect_cloud,scores={md_team=4},limit=1] md_score
scoreboard players operation §dThe_Shooting_Shulkers md_score_display = @e[type=area_effect_cloud,scores={md_team=5},limit=1] md_score
scoreboard players operation §6The_Blistering_Blazes md_score_display = @e[type=area_effect_cloud,scores={md_team=6},limit=1] md_score
scoreboard players operation §bThe_Dreadful_Drowned md_score_display = @e[type=area_effect_cloud,scores={md_team=7},limit=1] md_score
scoreboard players operation §8The_Blackstone_Brutes md_score_display = @e[type=area_effect_cloud,scores={md_team=8},limit=1] md_score

execute as @e[type=area_effect_cloud,tag=md_team] run function mob_dash:copy_player_scores