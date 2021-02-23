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
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Llama"', Color:16}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Enderman"', Color:17}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Dolphin"', Color:18}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Drowned"', Color:19}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Witch"', Color:20}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Iron Golem"', Color:21}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Piglin"', Color:22}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Hoglin"', Color:23}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Ghast"', Color:24}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Strider"', Color:25}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Magma Cube"', Color:26}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_2"], CustomName:'"Zombified Piglin"', Color:27}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_3"], CustomName:'"Zoglin"', Color:28}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_3"], CustomName:'"Blaze"', Color:29}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_3"], CustomName:'"Wither Skeleton"', Color:30}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_3"], CustomName:'"Piglin Brute"', Color:31}
summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_3"], CustomName:'"Guardian"', Color:32}

execute as @e[type=area_effect_cloud,tag=md_target] store result score @s md_target run data get entity @s Color
scoreboard players set @e[type=area_effect_cloud,tag=md_level_1] md_level 1
scoreboard players set @e[type=area_effect_cloud,tag=md_level_1] md_reward 1
scoreboard players set @e[type=area_effect_cloud,tag=md_level_2] md_level 2
scoreboard players set @e[type=area_effect_cloud,tag=md_level_2] md_reward 3
scoreboard players set @e[type=area_effect_cloud,tag=md_level_3] md_level 3
scoreboard players set @e[type=area_effect_cloud,tag=md_level_3] md_reward 10
