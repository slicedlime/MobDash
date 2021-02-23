# Create target data (auto-generated file)

summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1","md_random","md_true"], CustomName:'"Zombie"', Color:1}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1","md_random"], CustomName:'"Skeleton"', Color:2}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Creeper"', Color:3}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Spider"', Color:4}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Cow"', Color:5}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Chicken"', Color:6}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Pig"', Color:7}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Sheep"', Color:8}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Cod"', Color:9}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Salmon"', Color:10}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Squid"', Color:11}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Bee"', Color:12}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Bat"', Color:13}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Rabbit"', Color:14}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_1"], CustomName:'"Horse"', Color:15}

execute as @e[type=area_effect_cloud,tag=md_target] store result score @s md_target run data get entity @s Color
