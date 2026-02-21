# 初始化队伍（已存在时报错可忽略）
team add allen_allies
team modify allen_allies friendlyFire false
# 初始化AI计分板（已存在时报错可忽略）
scoreboard objectives add allen_cycle dummy
scoreboard objectives add allen_phase dummy
scoreboard objectives add allen_summon_cd dummy

tellraw @a [{"text":"[烦人的村民-建筑包] 命令：","color":"gold"},{"text":"/place structure buxin:villager_scout_outpost","color":"aqua"},{"text":"、","color":"gold"},{"text":"/function av_build:spawn_large_settlement_set","color":"yellow"},{"text":"、","color":"gold"},{"text":"/function av_build:spawn_animal_union_patrol","color":"green"},{"text":"、","color":"gold"},{"text":"/function av_build:spawn_him_clone_squad","color":"light_purple"},{"text":"、","color":"gold"},{"text":"/function av_build:spawn_player_allenzhang710901","color":"yellow"},{"text":"（含三阶段AI）","color":"green"},{"text":"、","color":"gold"},{"text":"/function av_build:cleanup_shadow_herobrine","color":"red"}]
