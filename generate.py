import json

level_1_mobs = [
    'zombie',
    'skeleton',
    'creeper',
    'spider',
    'cow',
    'chicken',
    'pig',
    'sheep',
    'cod',
    'salmon',
    'squid',
    'bee',
    'bat',
    'rabbit',
    'horse',
    ]

all_mobs = level_1_mobs

def get_display_name(mob):
    return mob.replace('_', ' ').title()

def get_level(mob):
    if mob in level_1_mobs:
        return 1
    return 0

with open('data/mob_dash/functions/create_target_scoreboards.mcfunction', 'w') as file:
    file.write('# Create all target scoreboards (auto-generated file)\n\n')

    for mob in all_mobs:
        display_name = get_display_name(mob)
        file.write('scoreboard objectives add md_' + mob + ' minecraft.killed:minecraft.' + mob + ' "Mob Dash ' + display_name + ' Kills"\n')

with open('data/mob_dash/functions/create_targets.mcfunction', 'w') as file:
    file.write('# Create target data (auto-generated file)\n\n')

    i = 1
    for mob in all_mobs:
        display_name = get_display_name(mob)
        level = get_level(mob)
        extra_tags = ''
        if i < 3:
            extra_tags = ',"md_random"'
        if i < 2:
            extra_tags += ',"md_true"'

        file.write('summon area_effect_cloud ~ 1 ~ {Duration:2147483647,Tags:["md_target","md_level_' + str(level) + '"' + extra_tags + '], CustomName:\'"' + display_name + '"\', Color:' + str(i) + '}\n')
        i += 1

    file.write('\nexecute as @e[type=area_effect_cloud,tag=md_target] store result score @s md_target run data get entity @s Color\n')

with open('data/mob_dash/functions/detect_kill.mcfunction', 'w') as file:
    file.write('# Detect if a target has been killed (auto-generated file)\n\n')

    i = 1
    for mob in all_mobs:
        file.write('execute if score $Target md_state matches ' + str(i) + ' as @a[scores={md_' + mob + '=1..}] run function mob_dash:award_kill\n')
        file.write('scoreboard players reset * md_' + mob + '\n')
        i += 1
