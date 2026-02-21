# 医疗帐篷
# 轻伤员收容与治疗补给

fill ~-4 ~ ~-4 ~4 ~6 ~4 air
fill ~-4 ~ ~-4 ~4 ~ ~4 moss_block
fill ~-4 ~1 ~-4 ~4 ~1 ~4 white_wool
fill ~-3 ~2 ~-3 ~3 ~3 ~3 white_wool
fill ~-2 ~2 ~-2 ~2 ~3 ~2 air

# 入口
setblock ~0 ~1 ~-4 air
setblock ~0 ~2 ~-3 air

# 医疗设施与宝箱
setblock ~-1 ~1 ~1 white_bed[facing=east,part=foot]
setblock ~0 ~1 ~1 white_bed[facing=east,part=head]
setblock ~1 ~1 ~1 white_bed[facing=west,part=foot]
setblock ~0 ~1 ~1 white_bed[facing=west,part=head]
setblock ~-2 ~1 ~-1 brewing_stand
setblock ~2 ~1 ~-1 cauldron[level=3]
setblock ~0 ~1 ~2 chest[facing=north]
loot insert ~0 ~1 ~2 loot minecraft:chests/simple_dungeon

# 伤员与守卫
summon buxin:villager_prisoner ~-1 ~1 ~0
summon buxin:villager_prisoner ~1 ~1 ~0
summon buxin:villager_scout ~0 ~1 ~-2

tellraw @s {"text":"[烦人的村民-建筑包] 医疗帐篷已生成。","color":"green"}
