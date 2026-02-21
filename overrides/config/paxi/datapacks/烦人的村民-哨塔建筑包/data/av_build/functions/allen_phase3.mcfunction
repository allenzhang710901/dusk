# 第三形态：终局爆发
scoreboard players set @s allen_phase 3
tag @s add allen_phase3
attribute @s minecraft:generic.max_health base set 900
attribute @s minecraft:generic.attack_damage base set 68
attribute @s minecraft:generic.movement_speed base set 0.72
effect give @s regeneration 12 4 true
effect give @s strength 12 6 true
effect give @s resistance 12 5 true
effect give @s speed 12 3 true
item replace entity @s weapon.mainhand with buxin:hui_mie_zhi_jian
item replace entity @s weapon.offhand with minecraft:totem_of_undying
tellraw @a [{"text":"[烦人的村民-建筑包] allenzhang710901 进入第三形态！","color":"red","bold":true}]
