# Update display scoreboard from entities

scoreboard players operation §cRedstone_Reapers md_score_display = @e[type=area_effect_cloud,scores={md_team=1,md_score=1..},limit=1] md_score
scoreboard players operation §aCharged_Creepers md_score_display = @e[type=area_effect_cloud,scores={md_team=2,md_score=1..},limit=1] md_score
scoreboard players operation §ePoisonous_Pufferfish md_score_display = @e[type=area_effect_cloud,scores={md_team=3,md_score=1..},limit=1] md_score
scoreboard players operation §9Fearless_Phantoms md_score_display = @e[type=area_effect_cloud,scores={md_team=4,md_score=1..},limit=1] md_score
scoreboard players operation §dShooting_Shulkers md_score_display = @e[type=area_effect_cloud,scores={md_team=5,md_score=1..},limit=1] md_score
scoreboard players operation §6Blistering_Blazes md_score_display = @e[type=area_effect_cloud,scores={md_team=6,md_score=1..},limit=1] md_score
scoreboard players operation §bDreadful_Drowned md_score_display = @e[type=area_effect_cloud,scores={md_team=7,md_score=1..},limit=1] md_score
scoreboard players operation §8Blackstone_Brutes md_score_display = @e[type=area_effect_cloud,scores={md_team=8,md_score=1..},limit=1] md_score

execute as @e[type=area_effect_cloud,tag=md_team] run function mob_dash:copy_player_scores