# 锁定显示名称（避免击败提示回退为愤怒的史蒂夫）
data merge entity @s {CustomName:'{"text":"allenzhang710901","color":"aqua","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b}
item replace entity @s weapon.offhand with minecraft:totem_of_undying
# allenzhang710901 动态AI：三阶段 + 换武器 + 残血逃跑 + 临时搭方块

# 常驻强化（高生存）
effect give @s resistance 2 3 true
effect give @s strength 2 4 true
effect give @s regeneration 2 2 true
effect give @s absorption 2 2 true

scoreboard players remove @s allen_summon_cd 1
execute if score @s allen_summon_cd matches ..0 if entity @s[tag=allen_phase2] run function av_build:allen_summon_minions
execute if score @s allen_summon_cd matches ..0 if entity @s[tag=allen_phase3] run function av_build:allen_summon_minions

# 阶段切换（按血量）
execute if entity @s[tag=!allen_phase2,nbt={Health:..70f}] run function av_build:allen_phase2
execute if entity @s[tag=!allen_phase3,nbt={Health:..35f}] run function av_build:allen_phase3

# 武器轮换计数（扩展武器池）
scoreboard players add @s allen_cycle 1
execute if score @s allen_cycle matches 1..6 run item replace entity @s weapon.mainhand with buxin:dark_herobrine_weapon
execute if score @s allen_cycle matches 7..12 run item replace entity @s weapon.mainhand with buxin:blood_greatsword
execute if score @s allen_cycle matches 13..18 run item replace entity @s weapon.mainhand with buxin:dark_legendary_sword
execute if score @s allen_cycle matches 19..24 run item replace entity @s weapon.mainhand with buxin:alloygiantsword
execute if score @s allen_cycle matches 25..30 run item replace entity @s weapon.mainhand with buxin:diamond_tachi_sword
execute if score @s allen_cycle matches 31..36 run item replace entity @s weapon.mainhand with buxin:diamond_long_axe
execute if score @s allen_cycle matches 37..42 run item replace entity @s weapon.mainhand with buxin:hui_mie_zhi_jian
execute if score @s allen_cycle matches 43..48 run item replace entity @s weapon.mainhand with buxin:fire_snake_sword
execute if score @s allen_cycle matches 49..54 run item replace entity @s weapon.mainhand with buxin:he_jin_wan_sword
execute if score @s allen_cycle matches 55..60 run item replace entity @s weapon.mainhand with buxin:diamond_spear
execute if score @s allen_cycle matches 61..66 run item replace entity @s weapon.mainhand with buxin:diamond_shield
execute if score @s allen_cycle matches 67..72 run item replace entity @s weapon.mainhand with buxin:diamond_giant_sword
execute if score @s allen_cycle matches 73..78 run item replace entity @s weapon.mainhand with buxin:goldenlongsword
execute if score @s allen_cycle matches 79..84 run item replace entity @s weapon.mainhand with buxin:zuan_shi_wan_dao
execute if score @s allen_cycle matches 85..90 run item replace entity @s weapon.mainhand with minecraft:netherite_sword
execute if score @s allen_cycle matches 91..96 run item replace entity @s weapon.mainhand with minecraft:crossbow
execute if score @s allen_cycle matches 97..102 run item replace entity @s weapon.mainhand with minecraft:trident
execute if score @s allen_cycle matches 103.. run scoreboard players set @s allen_cycle 0

# 根据战斗距离，优先切换“最适合”武器类别
execute if entity @e[distance=..3,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item,tag=!allen_ally] run function av_build:allen_ai_break_guard
execute if entity @e[distance=4..12,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item,tag=!allen_ally] run item replace entity @s weapon.mainhand with buxin:obs
execute if entity @e[distance=13..40,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item,tag=!allen_ally] run item replace entity @s weapon.mainhand with buxin:trident_blue_demon

# 残血时吃东西回血 + 逃跑 + 补血 + 搭掩体
execute if entity @s[nbt={Health:..120f}] run function av_build:allen_ai_eat
execute if entity @s[nbt={Health:..24f}] run function av_build:allen_ai_flee

# 临死反扑：仅触发一次，召唤2个满血分身
execute if entity @s[nbt={Health:..10f},tag=!allen_laststand_used] run function av_build:allen_laststand_split
