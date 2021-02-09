# Display the menu

tellraw @s [{"text":"Welcome to "},{"text":"Mob Dash","color":"gold"},{"text":" version "},{"text":"alpha 0.1","color":"gold"},{"text":" by "},{"text":"slicedlime","color":"green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/slicedlime"}}]
tellraw @s ""
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Tutorial", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 1"}},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Switch Teams", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 2"}},{"text":"]","color":"gold", "bold": true}]
execute if score $Win md_state matches 0 run tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Win Score Limit: ", "color":"green", "extra": [{"text": "None", "color": "aqua"}],"clickEvent":{"action":"suggest_command","value":"/trigger WinScore set "}},{"text":"]","color":"gold", "bold": true}]
execute if score $Win md_state matches 1.. run tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Win Score Limit: ", "color":"green", "extra": [{"score":{"objective":"md_state","name":"$Win"}, "color": "aqua"}],"clickEvent":{"action":"suggest_command","value":"/trigger WinScore set "}},{"text":"]","color":"gold", "bold": true}]
execute if score $Timeout md_state matches 0 run tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Time Limit: ", "color":"green", "extra": [{"text": "None", "color": "aqua"}],"clickEvent":{"action":"suggest_command","value":"/trigger TimeLimit set "}},{"text":"]","color":"gold", "bold": true}]
execute if score $Timeout md_state matches 1.. run tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Time Limit: ", "color":"green", "extra": [{"score":{"objective":"md_state","name":"$Timeout"}, "color": "aqua"},{"text":" min","color":"aqua"}],"clickEvent":{"action":"suggest_command","value":"/trigger TimeLimit set "}},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Scoring: ", "color":"green", "extra": [{"nbt":"Scoring","storage":"mob_dash:data","color":"aqua"}],"clickEvent":{"action":"run_command","value":"/trigger md_action set 4"}},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Difficulty: ", "color":"green", "extra": [{"nbt":"Difficulty","storage":"mob_dash:data","color":"aqua"}],"clickEvent":{"action":"run_command","value":"/trigger md_action set 5"}},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Start Game", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger md_action set 3"}},{"text":"]","color":"gold", "bold": true}]

scoreboard players set @s md_ticks 0
