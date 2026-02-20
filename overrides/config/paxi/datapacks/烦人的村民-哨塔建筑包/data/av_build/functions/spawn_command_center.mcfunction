# 指挥中心
# 地图桌、钟、战利品箱、精英守卫

fill ~-6 ~ ~-6 ~6 ~9 ~6 air
fill ~-6 ~ ~-6 ~6 ~ ~6 polished_andesite
fill ~-6 ~1 ~-6 ~6 ~5 ~-6 deepslate_bricks
fill ~-6 ~1 ~6 ~6 ~5 ~6 deepslate_bricks
fill ~-6 ~1 ~-5 ~-6 ~5 ~5 deepslate_bricks
fill ~6 ~1 ~-5 ~6 ~5 ~5 deepslate_bricks
fill ~-6 ~6 ~-6 ~6 ~6 ~6 stone_slab[type=bottom]

# 内部设备
setblock ~0 ~1 ~0 bell[attachment=floor]
setblock ~-1 ~1 ~2 cartography_table
setblock ~1 ~1 ~2 lectern
setblock ~0 ~1 ~3 crafting_table
setblock ~-2 ~1 ~-2 chest[facing=south]
setblock ~2 ~1 ~-2 chest[facing=south]
loot insert ~-2 ~1 ~-2 loot minecraft:chests/stronghold_corridor
loot insert ~2 ~1 ~-2 loot minecraft:chests/pillager_outpost

# 精英守军
summon buxin:red_villager ~2 ~1 ~2
summon buxin:green_villager_cavalry ~-2 ~1 ~2
summon buxin:cun_min_wei_bing ~0 ~1 ~3
summon buxin:villager_scout ~0 ~1 ~-3

tellraw @s {"text":"[烦人的村民-建筑包] 指挥中心已生成。","color":"green"}
