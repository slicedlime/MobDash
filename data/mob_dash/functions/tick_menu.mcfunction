# Runs every tick in menu mode

# Keep the game stalled until starting
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false

time set noon

# World border
execute store result score $Border md_state run worldborder get
execute unless score $Border md_state matches 100 run worldborder center ~ ~
execute unless score $Border md_state matches 100 run worldborder set 100
gamemode adventure @a[gamemode=!adventure,name=!slicedlime]

# Player griefing fixup

effect give @a minecraft:weakness 1 100 true
effect give @a minecraft:mining_fatigue 1 100 true

scoreboard players add @a md_ticks 1

scoreboard players enable @a md_action

execute as @a[scores={md_ticks=600..}] run function mob_dash:push_menu

execute as @a[scores={WinScore=-2147483647..2147483647}] run function mob_dash:set_win_score
scoreboard players enable @a WinScore
scoreboard players set @a WinScore -2147483648

execute as @a[scores={TimeLimit=-2147483647..2147483647}] run function mob_dash:set_time_limit
scoreboard players enable @a TimeLimit
scoreboard players set @a TimeLimit -2147483648

# React to menu action clicks

execute as @a[scores={md_action=1}] run function mob_dash:trigger_tutorial
execute as @a[scores={md_action=2}] run function mob_dash:display_teams_menu
execute as @a[scores={md_action=3}] run function mob_dash:start_game
execute as @a[scores={md_action=101..109}] run function mob_dash:join_team

scoreboard players set @a md_action 0
