# allenzhang710901 进食回血逻辑（玉米卷 + 附魔金苹果）

# 第一口：玉米卷（用命名面包模拟）
item replace entity @s weapon.mainhand with minecraft:bread{display:{Name:'{"text":"玉米卷","italic":false,"color":"gold"}'}}
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.01 8 force @a
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 1

# 玉米卷回复（轻度）
effect give @s regeneration 4 1 true
effect give @s saturation 1 1 true
data merge entity @s {Health:40f}

# 第二口：附魔金苹果（重度保命）
item replace entity @s weapon.mainhand with minecraft:enchanted_golden_apple
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.02 16 force @a
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.8 1.2

effect give @s regeneration 8 2 true
effect give @s absorption 20 1 true
effect give @s resistance 8 2 true
effect give @s instant_health 1 2 true

# 回战斗武器
item replace entity @s weapon.mainhand with buxin:dark_legendary_sword
tellraw @s {"text":"[烦人的村民-建筑包] allenzhang710901 进食：玉米卷 + 附魔金苹果，已强力回血。","color":"gold"}
