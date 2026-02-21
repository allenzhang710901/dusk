# 临死反扑：召唤2个满血allenzhang710901分身（仅触发一次）
tag @s add allen_laststand_used

summon buxin:angry_steve ~2 ~1 ~ {Tags:["allen_ai","allen_phase1","allen_ally","allen_laststand_used"],CustomName:'{"text":"allenzhang710901","color":"aqua","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Health:500f,Attributes:[{Name:"minecraft:generic.max_health",Base:500.0},{Name:"minecraft:generic.attack_damage",Base:38.0},{Name:"minecraft:generic.movement_speed",Base:0.50}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:netherite_helmet",Count:1b}],HandItems:[{id:"buxin:dark_legendary_sword",Count:1b},{id:"minecraft:totem_of_undying",Count:1b}],HandDropChances:[0.0f,0.0f]}
summon buxin:angry_steve ~-2 ~1 ~ {Tags:["allen_ai","allen_phase1","allen_ally","allen_laststand_used"],CustomName:'{"text":"allenzhang710901","color":"aqua","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Health:500f,Attributes:[{Name:"minecraft:generic.max_health",Base:500.0},{Name:"minecraft:generic.attack_damage",Base:38.0},{Name:"minecraft:generic.movement_speed",Base:0.50}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:netherite_helmet",Count:1b}],HandItems:[{id:"buxin:dark_legendary_sword",Count:1b},{id:"minecraft:totem_of_undying",Count:1b}],HandDropChances:[0.0f,0.0f]}

scoreboard players set @e[type=buxin:angry_steve,tag=allen_ai,tag=allen_laststand_used,distance=..8,sort=nearest,limit=2] allen_cycle 0
scoreboard players set @e[type=buxin:angry_steve,tag=allen_ai,tag=allen_laststand_used,distance=..8,sort=nearest,limit=2] allen_phase 1
scoreboard players set @e[type=buxin:angry_steve,tag=allen_ai,tag=allen_laststand_used,distance=..8,sort=nearest,limit=2] allen_summon_cd 80
team join allen_allies @e[type=buxin:angry_steve,tag=allen_ally,distance=..12,sort=nearest,limit=6]

tellraw @a[distance=..48] {"text":"[烦人的村民-建筑包] allenzhang710901 临死反扑：召唤了2个满血分身！","color":"red"}
