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

# Op-only mode

scoreboard players enable @a OpControl
execute as @a[scores={OpControl=1}] run function mob_dash:op_auth

# Menu handling

tag @a remove md_menu
execute if score $OpOnly md_state matches 0 run tag @a add md_menu
execute if score $OpOnly md_state matches 1 run tag @a[tag=md_op] add md_menu

scoreboard players add @a md_ticks 0
execute as @a[tag=!md_assigned] run function mob_dash:new_player

scoreboard players add @a md_ticks 1

scoreboard players enable @a[tag=md_menu] md_action

execute as @a[scores={md_ticks=600..},tag=!md_tutorial,tag=md_menu] run function mob_dash:push_menu
execute as @a[tag=md_tutorial] run function mob_dash:tick_tutorial

execute as @a[scores={WinScore=-2147483647..2147483647},tag=md_menu] run function mob_dash:set_win_score
scoreboard players enable @a[tag=md_menu] WinScore
scoreboard players set @a[tag=md_menu] WinScore -2147483648

execute as @a[scores={TimeLimit=-2147483647..2147483647},tag=md_menu] run function mob_dash:set_time_limit
scoreboard players enable @a[tag=md_menu] TimeLimit
scoreboard players set @a[tag=md_menu] TimeLimit -2147483648

# React to menu action clicks

execute as @a[scores={md_action=1},tag=md_menu] run function mob_dash:trigger_tutorial
execute as @a[scores={md_action=2},tag=md_menu] run function mob_dash:display_teams_menu
execute as @a[scores={md_action=3},tag=md_menu] if entity @p[scores={md_team=1..8}] run function mob_dash:start_game
execute as @a[scores={md_action=3},tag=md_menu] unless entity @p[scores={md_team=1..8}] run tellraw @s [{"text": "No players on any team, cannot start", "color": "red"}]
execute as @a[scores={md_action=4},tag=md_menu] run function mob_dash:cycle_scoring
execute as @a[scores={md_action=5},tag=md_menu] run function mob_dash:cycle_difficulty
execute as @a[scores={md_action=6},tag=md_menu] run function mob_dash:cancel_tutorial
execute as @a[scores={md_action=7},tag=md_menu] run function mob_dash:assign_teams_menu
execute as @a[scores={md_action=101..109},tag=md_menu] run function mob_dash:join_team
execute as @a[scores={SetTeam=1..9},tag=md_menu] run function mob_dash:join_team

scoreboard players set @a md_action 0
