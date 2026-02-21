# 残血行为：后撤、治疗、搭掩体
execute facing entity @e[distance=..20,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] eyes run tp @s ^ ^ ^-5

effect give @s regeneration 6 3 true
effect give @s speed 6 2 true
effect give @s instant_health 1 1 true

# 临时搭方块掩体（仅在空气处放置）
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ cobblestone
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ cobblestone
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 cobblestone
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 cobblestone
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ cobblestone
