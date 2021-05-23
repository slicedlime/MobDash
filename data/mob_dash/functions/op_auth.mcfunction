# Prompt to authenticate @s as an op and put the game into op-control mode

execute if score $OpOnly md_state matches 0 run tellraw @s [{"text": "Click here to place the game into op-only mode and authenticate as an operator", "color": "green", "clickEvent": {"action": "run_command", "value": "/function mob_dash:op"}}]
execute if score $OpOnly md_state matches 1 run tellraw @s [{"text": "The game is already in op-only mode. Click here to authenticate as an operator", "color": "green", "clickEvent": {"action": "run_command", "value": "/function mob_dash:op"}}]

scoreboard players reset @s OpControl
