# 大型烦村据点一键生成（5个新建筑 + 生物扩展）
execute positioned ~ ~ ~ run function av_build:spawn_player_settlement
execute positioned ~18 ~ ~0 run function av_build:spawn_training_camp
execute positioned ~-16 ~ ~2 run function av_build:spawn_supply_depot
execute positioned ~0 ~ ~18 run function av_build:spawn_medical_tent
execute positioned ~0 ~ ~-18 run function av_build:spawn_command_center
execute positioned ~8 ~ ~8 run function av_build:spawn_animal_union_patrol
execute positioned ~-8 ~ ~-8 run function av_build:spawn_him_clone_squad

tellraw @s {"text":"[烦人的村民-建筑包] 大型据点+生物扩展已生成。","color":"aqua"}
