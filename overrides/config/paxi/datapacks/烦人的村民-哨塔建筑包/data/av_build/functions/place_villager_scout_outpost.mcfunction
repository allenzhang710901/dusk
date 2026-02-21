# 一键放置可测试的结构，并立即补充守军
place structure buxin:villager_scout_outpost
summon buxin:villager_scout ~2 ~1 ~2
summon buxin:villager_scout ~-2 ~1 ~-2
summon buxin:green_villager_cavalry ~1 ~1 ~-3
summon buxin:red_villager ~-1 ~1 ~3
tellraw @s {"text":"[烦人的村民-建筑包] 已放置 buxin:villager_scout_outpost 并生成守军。","color":"green"}
