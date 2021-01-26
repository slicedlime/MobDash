# Create target data

summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Redstone Reapers","color":"red"}', Color:1}
team add red {"text":"The Redstone Reapers","color":"red"}
team modify red color red
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Charged Creepers","color":"green"}', Color:2}
team add green {"text":"The Charged Creepers","color":"green"}
team modify green color green
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Poisonous Pufferfish","color":"yellow"}', Color:3}
team add yellow {"text":"The Poisonous Pufferfish","color":"yellow"}
team modify yellow color yellow
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Fearless Phantoms","color":"blue"}', Color:4}
team add blue {"text":"The Fearless Phantoms","color":"blue"}
team modify blue color blue
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Shooting Shulkers","color":"light_purple"}', Color:5}
team add purple {"text":"The Shooting Shulkers","color":"light_purple"}
team modify purple color light_purple
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Blistering Blazes","color":"gold"}', Color:6}
team add gold {"text":"The Blistering Blazes","color":"gold"}
team modify gold color gold
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Dreadful Drowned","color":"aqua"}', Color:7}
team add aqua {"text":"The Dreadful Drowned","color":"aqua"}
team modify aqua color aqua
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Blackstone Brutes","color":"dark_gray"}', Color:8}
team add black {"text":"The Blackstone Brutes","color":"dark_gray"}
team modify black color dark_gray

summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_team"], CustomName:'{"text":"The Viewing Vexes","color":"gray","italic": true}', Color:9}
team add gray {"text":"The Viewing Vexes","color":"gray"}
team modify black color gray

execute as @e[type=area_effect_cloud,tag=md_team] store result score @s md_team run data get entity @s Color
