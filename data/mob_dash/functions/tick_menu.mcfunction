# Runs every tick in menu mode

# Keep the game stalled until starting
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
difficulty peaceful

time set noon

# World border
execute store result score $Border md_state run worldborder get
execute unless score $Border md_state matches 100 run worldborder center ~ ~
execute unless score $Border md_state matches 100 run worldborder set 100
gamemode adventure @a[gamemode=!adventure,name=!slicedlime]

# Player griefing fixup

effect give @a minecraft:weakness 1 100 true
effect give @a minecraft:mining_fatigue 1 100 true
effect give @a minecraft:saturation 1 1 true

# Menu handling

scoreboard players add @a md_ticks 0
execute as @a[tag=!md_assigned] run function mob_dash:new_player

scoreboard players add @a md_ticks 1

scoreboard players enable @a md_action

execute as @a[scores={md_ticks=600..},tag=!md_tutorial] run function mob_dash:push_menu
execute as @a[tag=md_tutorial] run function mob_dash:tick_tutorial

execute as @a[scores={WinScore=-2147483647..2147483647}] run function mob_dash:set_win_score
scoreboard players enable @a WinScore
scoreboard players set @a WinScore -2147483648

execute as @a[scores={TimeLimit=-2147483647..2147483647}] run function mob_dash:set_time_limit
scoreboard players enable @a TimeLimit
scoreboard players set @a TimeLimit -2147483648

# React to menu action clicks

execute as @a[scores={md_action=1}] run function mob_dash:trigger_tutorial
execute as @a[scores={md_action=2}] run function mob_dash:display_teams_menu
execute as @a[scores={md_action=3}] if entity @p[scores={md_team=1..8}] run function mob_dash:start_game
execute as @a[scores={md_action=3}] unless entity @p[scores={md_team=1..8}] run tellraw @s [{"text": "No players on any team, cannot start", "color": "red"}]
execute as @a[scores={md_action=4}] run function mob_dash:cycle_scoring
execute as @a[scores={md_action=5}] run function mob_dash:cycle_difficulty
execute as @a[scores={md_action=6}] run function mob_dash:cancel_tutorial
execute as @a[scores={md_action=101..109}] run function mob_dash:join_team

scoreboard players set @a md_action 0
