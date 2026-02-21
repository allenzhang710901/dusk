# 生成更高强度玩家阵营角色：allenzhang710901
# 特性：超高血量、三阶段AI、武器池轮换、残血逃跑/搭掩体
summon buxin:angry_steve ~ ~1 ~ {Tags:["allen_ai","allen_phase1"],CustomName:'{"text":"allenzhang710901","color":"aqua","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Health:500f,Attributes:[{Name:"minecraft:generic.max_health",Base:500.0},{Name:"minecraft:generic.attack_damage",Base:38.0},{Name:"minecraft:generic.movement_speed",Base:0.50}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:netherite_helmet",Count:1b}],HandItems:[{id:"buxin:dark_legendary_sword",Count:1b},{id:"minecraft:totem_of_undying",Count:1b}],HandDropChances:[0.0f,0.0f]}
scoreboard players set @e[type=buxin:angry_steve,tag=allen_ai,sort=nearest,limit=1] allen_cycle 0
scoreboard players set @e[type=buxin:angry_steve,tag=allen_ai,sort=nearest,limit=1] allen_phase 1

tellraw @s {"text":"[烦人的村民-建筑包] 已生成 allenzhang710901（三阶段强化AI）。","color":"green"}
