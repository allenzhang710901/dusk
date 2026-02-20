# 动物联合协会巡逻队（混合动物与协会成员）
# 说明：包含动物 + player_mobs 阵营成员
summon wolf ~2 ~1 ~2 {CustomName:'{"text":"协会战狼"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon fox ~-2 ~1 ~1 {CustomName:'{"text":"协会狐侦察"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon goat ~1 ~1 ~-2 {CustomName:'{"text":"协会山羊突击"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon horse ~-1 ~1 ~-3 {Tame:1b,CustomName:'{"text":"协会战马"}',CustomNameVisible:1b,PersistenceRequired:1b}
summon player_mobs:player_mob ~0 ~1 ~3 {CustomName:'{"text":"动物联合协会成员"}',CustomNameVisible:1b,PersistenceRequired:1b}

tellraw @s {"text":"[烦人的村民-建筑包] 动物联合协会巡逻队已生成。","color":"green"}
