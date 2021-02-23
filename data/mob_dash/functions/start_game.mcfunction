# Start the game!

gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true

time set day
effect give @a instant_health 1 10 true
effect give @a saturation 1 10 true
effect give @a resistance 1 10 true
gamemode survival @a[team=!gray]
gamemode spectator @a[team=gray]
clear @a

worldborder set 60000000

scoreboard players set $State md_state 1
scoreboard players set $Target md_state 0
scoreboard players set @e[type=area_effect_cloud,tag=md_team] md_score 0

scoreboard players set $Tick md_state 0
scoreboard players operation $EndTick md_state = $Timeout md_state
scoreboard players operation $EndTick md_state *= 1200 md_const

# Set appropriate difficulty
execute if score $GameDifficulty md_state matches 1 run difficulty easy
execute if score $GameDifficulty md_state matches 2 run difficulty normal
execute if score $GameDifficulty md_state matches 3 run difficulty hard

# Reset scores
scoreboard players reset * md_score_display
scoreboard objectives setdisplay sidebar

# Count team members
scoreboard players set @e[type=area_effect_cloud,tag=md_team] md_team_count 0
execute as @e[type=area_effect_cloud,tag=md_team] run function mob_dash:count_members

execute store result score $ActiveTeams md_state if entity @e[type=area_effect_cloud,tag=md_team,scores={md_team_count=1..}]

# Set starting mob difficulty
scoreboard players set $MobDifficulty md_state 0
execute if score $Difficulty md_state matches 0 run scoreboard players set $DifficultyFactor md_state 20
execute if score $Difficulty md_state matches 1 run scoreboard players set $DifficultyFactor md_state 15
execute if score $Difficulty md_state matches 2 run scoreboard players set $DifficultyFactor md_state 10

# Scale by number of active ActiveTeams
scoreboard players operation $DifficultyFactor md_state *= $ActiveTeams md_state
