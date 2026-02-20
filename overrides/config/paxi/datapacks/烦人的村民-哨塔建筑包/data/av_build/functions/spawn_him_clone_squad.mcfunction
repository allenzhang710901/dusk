# 一键生成三种HIM分身（沿用原实体AI，做数值与定位区分）
execute positioned ~ ~ ~ run function av_build:spawn_him_clone_vanguard
execute positioned ~3 ~ ~2 run function av_build:spawn_him_clone_bulwark
execute positioned ~-3 ~ ~-2 run function av_build:spawn_him_clone_ravager
tellraw @s {"text":"[烦人的村民-建筑包] HIM分身小队已生成。","color":"dark_purple"}
