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
    'horse'
]

level_2_mobs = [
    'llama',
    'enderman',
    'dolphin',
    'drowned',
    'witch',
    'iron_golem',
    'piglin',
    'hoglin',
    'ghast',
    'strider',
    'magma_cube',
    'zombified_piglin'
]

level_3_mobs = [
    'zoglin',
    'blaze',
    'wither_skeleton',
    'piglin_brute',
    'guardian'
]

all_mobs = level_1_mobs + level_2_mobs + level_3_mobs

def get_display_name(mob):
    return mob.replace('_', ' ').title()

def get_level(mob):
    if mob in level_1_mobs:
        return 1
    elif mob in level_2_mobs:
        return 2
    elif mob in level_3_mobs:
        return 3
    return 0

def get_scoreboard_name(mob):
    return 'md_' + mob[:12]

with open('data/mob_dash/functions/create_target_scoreboards.mcfunction', 'w') as file:
    file.write('# Create all target scoreboards (auto-generated file)\n\n')

    for mob in all_mobs:
        display_name = get_display_name(mob)
        scoreboard_name = get_scoreboard_name(mob)
        file.write('scoreboard objectives add ' + scoreboard_name + ' minecraft.killed:minecraft.' + mob + ' "Mob Dash ' + display_name + ' Kills"\n')

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
    for i in range(1, 4):
        file.write('scoreboard players set @e[type=area_effect_cloud,tag=md_level_' + str(i) + '] md_level ' + str(i) + '\n')

with open('data/mob_dash/functions/detect_kill.mcfunction', 'w') as file:
    file.write('# Detect if a target has been killed (auto-generated file)\n\n')

    i = 1
    for mob in all_mobs:
        scoreboard_name = get_scoreboard_name(mob)
        file.write('execute if score $Target md_state matches ' + str(i) + ' as @a[scores={' + scoreboard_name + '=1..}] run function mob_dash:award_kill\n')
        file.write('scoreboard players reset * ' + scoreboard_name + '\n')
        i += 1
