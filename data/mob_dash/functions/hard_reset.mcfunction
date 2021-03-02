# Hard reset the minigame

kill @e[type=minecraft:area_effect_cloud]
scoreboard objectives remove md_state
scoreboard objectives remove md_ticks

function mob_dash:load
