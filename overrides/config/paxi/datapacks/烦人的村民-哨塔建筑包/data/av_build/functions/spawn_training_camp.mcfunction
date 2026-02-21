# 训练场
# 木桩、靶场、武备箱

fill ~-7 ~ ~-5 ~7 ~6 ~5 air
fill ~-7 ~ ~-5 ~7 ~ ~5 coarse_dirt

# 围栏与入口
fill ~-7 ~1 ~-5 ~7 ~1 ~-5 oak_fence
fill ~-7 ~1 ~5 ~7 ~1 ~5 oak_fence
fill ~-7 ~1 ~-4 ~-7 ~1 ~4 oak_fence
fill ~7 ~1 ~-4 ~7 ~1 ~4 oak_fence
setblock ~0 ~1 ~-5 air

# 木桩
fill ~-3 ~1 ~0 ~-3 ~2 ~0 stripped_oak_log
fill ~0 ~1 ~0 ~0 ~2 ~0 stripped_oak_log
fill ~3 ~1 ~0 ~3 ~2 ~0 stripped_oak_log

# 靶场
setblock ~-4 ~1 ~4 target
setblock ~0 ~1 ~4 target
setblock ~4 ~1 ~4 target

# 武备区与宝箱
setblock ~-6 ~1 ~-4 smithing_table
setblock ~-5 ~1 ~-4 grindstone[facing=east,face=floor]
setblock ~-4 ~1 ~-4 chest[facing=east]
loot insert ~-4 ~1 ~-4 loot minecraft:chests/abandoned_mineshaft

# 训练单位
summon buxin:villager_scout ~1 ~1 ~1
summon buxin:villager_scout ~-1 ~1 ~1
summon buxin:red_villager ~0 ~1 ~2

tellraw @s {"text":"[烦人的村民-建筑包] 训练场已生成。","color":"green"}
