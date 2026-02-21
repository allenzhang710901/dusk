# 第二形态：强化中期作战
scoreboard players set @s allen_phase 2
tag @s add allen_phase2
attribute @s minecraft:generic.max_health base set 300
attribute @s minecraft:generic.attack_damage base set 36
attribute @s minecraft:generic.movement_speed base set 0.52
effect give @s regeneration 10 2 true
effect give @s strength 10 4 true
effect give @s resistance 10 3 true
item replace entity @s weapon.mainhand with buxin:dark_legendary_sword
item replace entity @s weapon.offhand with minecraft:totem_of_undying
tellraw @a [{"text":"[烦人的村民-建筑包] allenzhang710901 进入第二形态！","color":"gold"}]
