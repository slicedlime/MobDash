# Update the timer boss bar

bossbar set mob_dash:timer players @a
scoreboard players operation $TimeLeft md_state = $EndTick md_state
scoreboard players operation $TimeLeft md_state -= $Tick md_state
execute store result bossbar mob_dash:timer value run scoreboard players get $TimeLeft md_state

scoreboard players operation $SecsLeft md_state = $TimeLeft md_state
scoreboard players add $SecsLeft md_state 19
scoreboard players operation $SecsLeft md_state /= 20 md_const

scoreboard players operation $MinsLeft md_state = $TimeLeft md_state
scoreboard players add $MinsLeft md_state 1199
scoreboard players operation $MinsLeft md_state /= 1200 md_const
execute if score $MinsLeft md_state matches 1 if score $SecsLeft md_state matches 1 run bossbar set mob_dash:timer name [{"text": "Game Time Remaining: "},{"score":{"name":"$SecsLeft","objective": "md_state"}},{"text": " second"}]
execute if score $MinsLeft md_state matches 1 unless score $SecsLeft md_state matches 1 run bossbar set mob_dash:timer name [{"text": "Game Time Remaining: "},{"score":{"name":"$SecsLeft","objective": "md_state"}},{"text": " seconds"}]
execute unless score $MinsLeft md_state matches 1 run bossbar set mob_dash:timer name [{"text": "Game Time Remaining: "},{"score":{"name":"$MinsLeft","objective": "md_state"}},{"text": " mins"}]

execute if score $TimeLeft md_state matches 6000 run bossbar set mob_dash:timer color yellow
execute if score $TimeLeft md_state matches 1200 run bossbar set mob_dash:timer color red
