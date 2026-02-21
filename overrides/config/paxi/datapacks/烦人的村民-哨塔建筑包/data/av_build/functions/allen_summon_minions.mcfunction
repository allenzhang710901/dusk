# allenzhang710901 召唤小弟（同阵营，不内讧）
summon buxin:cun_min_wei_bing ~2 ~1 ~1 {Tags:["allen_ally"],PersistenceRequired:1b}
summon buxin:green_villager_cavalry ~-2 ~1 ~1 {Tags:["allen_ally"],PersistenceRequired:1b}
summon buxin:villager_scout ~0 ~1 ~-2 {Tags:["allen_ally"],PersistenceRequired:1b}
team join allen_allies @e[tag=allen_ally,distance=..10,sort=nearest,limit=8]
scoreboard players set @s allen_summon_cd 220
tellraw @s {"text":"[烦人的村民-建筑包] allenzhang710901 已召唤小弟支援。","color":"green"}
