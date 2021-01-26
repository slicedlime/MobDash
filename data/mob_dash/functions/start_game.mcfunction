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
