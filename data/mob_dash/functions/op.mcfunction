# Authenticate @s as an op and put the game into op-control mode

execute if score $OpOnly md_state matches 0 run tellraw @a [{"text": "The game is now in op-only mode.", "color": "gold"}]

scoreboard players set $OpOnly md_state 1
tag @s add md_op
