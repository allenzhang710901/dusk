# 玩家聚集地（烦村前线营地）
# 中央篝火+会议台+补给宝箱

fill ~-6 ~ ~-6 ~6 ~8 ~6 air
fill ~-6 ~ ~-6 ~6 ~ ~6 packed_mud
fill ~-2 ~ ~-2 ~2 ~ ~2 spruce_planks
setblock ~ ~ ~ campfire

# 四角帐篷柱
fill ~-5 ~1 ~-5 ~-5 ~3 ~-5 spruce_log
fill ~5 ~1 ~-5 ~5 ~3 ~-5 spruce_log
fill ~-5 ~1 ~5 ~-5 ~3 ~5 spruce_log
fill ~5 ~1 ~5 ~5 ~3 ~5 spruce_log
fill ~-5 ~4 ~-5 ~5 ~4 ~5 red_wool

# 会议台与补给
setblock ~0 ~1 ~4 cartography_table
setblock ~1 ~1 ~4 lectern
setblock ~-1 ~1 ~4 barrel
setblock ~0 ~1 ~-4 chest[facing=south]
loot insert ~ ~1 ~-4 loot minecraft:chests/pillager_outpost

# 驻守实体（玩家小队）
summon buxin:steve ~-2 ~1 ~2
summon buxin:alex ~0 ~1 ~3
summon buxin:jie_mo ~1 ~1 ~-2 {CustomName:'{"text":"芥末","color":"yellow"}',CustomNameVisible:1b}
summon buxin:run_grave ~-1 ~1 ~-2 {CustomName:'{"text":"x_grave_x","color":"dark_gray"}',CustomNameVisible:1b}

tellraw @s {"text":"[烦人的村民-建筑包] 玩家聚集地已生成（Steve/Alex/芥末/x_grave_x）。","color":"green"}
