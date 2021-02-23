# Display game time as boss bar

bossbar add mob_dash:timer "Game Time"
bossbar set mob_dash:timer color green
execute store result bossbar mob_dash:timer max run scoreboard players get $EndTick md_state
