# Show the entire tutorial

execute if score @s md_ticks matches 20 run tellraw @s ["\n", {"text": "Mob Dash!", "color": "gold"}, {"text": " is a game about frantically hunting mobs. The game will call out a target mob, and the first team to kill that mob gets the points."}, {"text":" [","color":"gold","bold": true},{"text":"X", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 6"},"hoverEvent": {"action": "show_text","contents": {"text":"Cancel Tutorial"}}},{"text":"]","color":"gold", "bold": true}]

execute if score @s md_ticks matches 180 run tellraw @s ["\n", {"text": "When you first join the game, you'll be placed on a random team. Use the "}, {"text": "Switch Teams","color": "#FF46B6"}, {"text": " menu option to select a team."}, {"text":" [","color":"gold","bold": true},{"text":"X", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 6"},"hoverEvent": {"action": "show_text","contents": {"text":"Cancel Tutorial"}}},{"text":"]","color":"gold", "bold": true}]

execute if score @s md_ticks matches 300 run tellraw @s ["\n", {"text": "There are two scoring modes - "},{"text": "Flat","color": "#FF46B6"},{"text": " and "},{"text": "Progressive","color": "#FF46B6"},{"text": ". Switch between them using the "},{"text": "Scoring", "color": "#FF46B6"},{"text": " menu option."},{"text":" [","color":"gold","bold": true},{"text":"X", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 6"},"hoverEvent": {"action": "show_text","contents": {"text":"Cancel Tutorial"}}},{"text":"]","color":"gold", "bold": true}]

execute if score @s md_ticks matches 420 run tellraw @s ["\n",{"text": "In "},{"text": "Flat","color": "#FF46B6"},{"text": " mode all mobs are equally valuable, no matter how hard they are to kill. In "}, {"text": "Progressive", "color": "#FF46B6"},{"text": " mode, harder mobs are worth more points."}, {"text":" [","color":"gold","bold": true},{"text":"X", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 6"},"hoverEvent": {"action": "show_text","contents": {"text":"Cancel Tutorial"}}},{"text":"]","color":"gold", "bold": true}]

execute if score @s md_ticks matches 580 run tellraw @s ["\n",{"text": "There is also a "},{"text": "Difficulty","color": "#FF46B6"},{"text": " menu option. The difficulty controls how quickly the game will start assigning harder mob targets."}, {"text":" [","color":"gold","bold": true},{"text":"X", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 6"},"hoverEvent": {"action": "show_text","contents": {"text":"Cancel Tutorial"}}},{"text":"]","color":"gold", "bold": true}]

execute if score @s md_ticks matches 740 run tellraw @s ["\n",{"text": "When everyone is ready, start the game using the "},{"text": "Start Game","color": "#FF46B6"},{"text": " menu option."}]

execute if score @s md_ticks matches 840 run tellraw @s ""
execute if score @s md_ticks matches 840 run function mob_dash:cancel_tutorial
