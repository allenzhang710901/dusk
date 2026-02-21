# allenzhang710901 召唤玩家小队（同阵营，不内讧）
summon buxin:steve ~2 ~1 ~1 {Tags:["allen_ally","allen_minion"],PersistenceRequired:1b,CustomName:'{"text":"Steve","color":"aqua"}',CustomNameVisible:1b}
summon buxin:alex ~-2 ~1 ~1 {Tags:["allen_ally","allen_minion"],PersistenceRequired:1b,CustomName:'{"text":"Alex","color":"light_purple"}',CustomNameVisible:1b}
summon buxin:jie_mo ~0 ~1 ~-2 {Tags:["allen_ally","allen_minion"],PersistenceRequired:1b,CustomName:'{"text":"芥末","color":"yellow"}',CustomNameVisible:1b}
summon buxin:run_grave ~1 ~1 ~-3 {Tags:["allen_ally","allen_minion"],PersistenceRequired:1b,CustomName:'{"text":"x_grave_x","color":"dark_gray"}',CustomNameVisible:1b}
team join allen_allies @e[tag=allen_ally,distance=..12,sort=nearest,limit=12]
scoreboard players set @s allen_summon_cd 220
tellraw @s {"text":"[烦人的村民-建筑包] allenzhang710901 已召唤玩家小队：Steve / Alex / 芥末 / x_grave_x。","color":"green"}
