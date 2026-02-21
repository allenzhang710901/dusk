# 反格挡逻辑：近战破盾 + 破防伤害 + 控制

# 近战优先切斧头（更容易打断格挡）
item replace entity @s weapon.mainhand with minecraft:netherite_axe{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:smite",lvl:5s}]}

# 对最近敌人施加破防控制
execute as @e[distance=..4,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] run effect give @s weakness 2 2 true
execute as @e[distance=..4,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] run effect give @s slowness 2 2 true

# 额外法伤，降低“全程格挡”带来的拖战
execute as @e[distance=..4,sort=nearest,limit=1,type=!buxin:angry_steve,type=!player_mobs:player_mob,type=!minecraft:item] run damage @s 6 minecraft:magic by @s
