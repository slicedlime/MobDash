# Update the timer boss bar

bossbar set mob_dash:timer players @a
scoreboard players operation $TimeLeft md_state = $EndTick md_state
scoreboard players operation $TimeLeft md_state -= $Tick md_state
execute store result bossbar mob_dash:timer value run scoreboard players get $TimeLeft md_state

execute if score $TimeLeft md_state matches 6000 run bossbar set mob_dash:timer color yellow
execute if score $TimeLeft md_state matches 1200 run bossbar set mob_dash:timer color red
