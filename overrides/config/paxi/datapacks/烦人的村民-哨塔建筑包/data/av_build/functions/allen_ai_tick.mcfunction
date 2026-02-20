# allenzhang710901 动态AI：换武器、残血逃跑、临时搭方块

# 常驻强化（高生存）
effect give @s resistance 2 1 true
effect give @s strength 2 1 true

# 武器轮换计数（覆盖多种整合包武器）
scoreboard players add @s allen_cycle 1
execute if score @s allen_cycle matches 1..8 run item replace entity @s weapon.mainhand with buxin:dark_herobrine_weapon
execute if score @s allen_cycle matches 9..16 run item replace entity @s weapon.mainhand with buxin:blood_greatsword
execute if score @s allen_cycle matches 17..24 run item replace entity @s weapon.mainhand with buxin:dark_legendary_sword
execute if score @s allen_cycle matches 25..32 run item replace entity @s weapon.mainhand with buxin:alloygiantsword
execute if score @s allen_cycle matches 33..40 run item replace entity @s weapon.mainhand with buxin:diamond_tachi_sword
execute if score @s allen_cycle matches 41..48 run item replace entity @s weapon.mainhand with buxin:diamond_long_axe
execute if score @s allen_cycle matches 49..56 run item replace entity @s weapon.mainhand with buxin:hui_mie_zhi_jian
execute if score @s allen_cycle matches 57..64 run item replace entity @s weapon.mainhand with buxin:fire_snake_sword
execute if score @s allen_cycle matches 65..72 run item replace entity @s weapon.mainhand with minecraft:netherite_sword
execute if score @s allen_cycle matches 73..80 run item replace entity @s weapon.mainhand with minecraft:crossbow
execute if score @s allen_cycle matches 81..88 run item replace entity @s weapon.mainhand with minecraft:trident
execute if score @s allen_cycle matches 89.. run scoreboard players set @s allen_cycle 0

# 根据战斗距离，优先切换“最适合”武器类别
execute if entity @e[distance=..3,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] run item replace entity @s weapon.mainhand with buxin:dark_herobrine_weapon
execute if entity @e[distance=4..12,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] run item replace entity @s weapon.mainhand with minecraft:crossbow
execute if entity @e[distance=13..40,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] run item replace entity @s weapon.mainhand with minecraft:trident

# 残血时逃跑 + 补血 + 搭掩体
execute if entity @s[nbt={Health:..24f}] run function av_build:allen_ai_flee
