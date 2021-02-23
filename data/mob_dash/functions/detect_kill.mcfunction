# Detect if a target has been killed (auto-generated file)

execute if score $Target md_state matches 1 as @a[scores={md_zombie=1..}] run function mob_dash:award_kill
scoreboard players reset * md_zombie
execute if score $Target md_state matches 2 as @a[scores={md_skeleton=1..}] run function mob_dash:award_kill
scoreboard players reset * md_skeleton
execute if score $Target md_state matches 3 as @a[scores={md_creeper=1..}] run function mob_dash:award_kill
scoreboard players reset * md_creeper
execute if score $Target md_state matches 4 as @a[scores={md_spider=1..}] run function mob_dash:award_kill
scoreboard players reset * md_spider
execute if score $Target md_state matches 5 as @a[scores={md_cow=1..}] run function mob_dash:award_kill
scoreboard players reset * md_cow
execute if score $Target md_state matches 6 as @a[scores={md_chicken=1..}] run function mob_dash:award_kill
scoreboard players reset * md_chicken
execute if score $Target md_state matches 7 as @a[scores={md_pig=1..}] run function mob_dash:award_kill
scoreboard players reset * md_pig
execute if score $Target md_state matches 8 as @a[scores={md_sheep=1..}] run function mob_dash:award_kill
scoreboard players reset * md_sheep
execute if score $Target md_state matches 9 as @a[scores={md_cod=1..}] run function mob_dash:award_kill
scoreboard players reset * md_cod
execute if score $Target md_state matches 10 as @a[scores={md_salmon=1..}] run function mob_dash:award_kill
scoreboard players reset * md_salmon
execute if score $Target md_state matches 11 as @a[scores={md_squid=1..}] run function mob_dash:award_kill
scoreboard players reset * md_squid
execute if score $Target md_state matches 12 as @a[scores={md_bee=1..}] run function mob_dash:award_kill
scoreboard players reset * md_bee
execute if score $Target md_state matches 13 as @a[scores={md_bat=1..}] run function mob_dash:award_kill
scoreboard players reset * md_bat
execute if score $Target md_state matches 14 as @a[scores={md_rabbit=1..}] run function mob_dash:award_kill
scoreboard players reset * md_rabbit
execute if score $Target md_state matches 15 as @a[scores={md_horse=1..}] run function mob_dash:award_kill
scoreboard players reset * md_horse
