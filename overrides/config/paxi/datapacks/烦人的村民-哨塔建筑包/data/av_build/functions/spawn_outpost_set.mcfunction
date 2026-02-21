# 一键生成前哨营地组合：哨塔 + 兵营 + 铁匠铺
execute positioned ~ ~ ~ run function av_build:spawn_watchtower
execute positioned ~14 ~ ~2 run function av_build:spawn_barracks
execute positioned ~-12 ~ ~-2 run function av_build:spawn_blacksmith

tellraw @s {"text":"[烦人的村民-建筑包] 前哨营地组合已生成。","color":"aqua"}
