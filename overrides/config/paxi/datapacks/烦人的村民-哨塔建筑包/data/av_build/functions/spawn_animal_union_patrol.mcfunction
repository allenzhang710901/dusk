# 动物联合协会巡逻队（BBP阵营）
# 说明：以 BBP/BBQ 为核心，包含动物 + 协会成员
summon buxin:bbq ~0 ~1 ~3 {CustomName:'{"text":"BBP-协会领队","color":"gold"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon wolf ~2 ~1 ~2 {CustomName:'{"text":"协会战狼"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon fox ~-2 ~1 ~1 {CustomName:'{"text":"协会狐侦察"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon goat ~1 ~1 ~-2 {CustomName:'{"text":"协会山羊突击"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon horse ~-1 ~1 ~-3 {Tame:1b,CustomName:'{"text":"协会战马"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon player_mobs:player_mob ~1 ~1 ~4 {CustomName:'{"text":"动物联合协会成员"}',CustomNameVisible:1b,PersistenceRequired:1b}

tellraw @s {"text":"[烦人的村民-建筑包] 动物联合协会（BBP阵营）巡逻队已生成。","color":"green"}
