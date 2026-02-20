# 烦人的村民风格兵营（手动触发）
# 10x8 占地，双层床位 + 训练区

fill ~-5 ~ ~-4 ~4 ~8 ~3 air
fill ~-5 ~ ~-4 ~4 ~ ~3 stone_bricks

# 墙体
fill ~-5 ~1 ~-4 ~4 ~4 ~-4 spruce_planks
fill ~-5 ~1 ~3 ~4 ~4 ~3 spruce_planks
fill ~-5 ~1 ~-3 ~-5 ~4 ~2 spruce_planks
fill ~4 ~1 ~-3 ~4 ~4 ~2 spruce_planks

# 屋顶
fill ~-5 ~5 ~-4 ~4 ~5 ~3 dark_oak_slab[type=bottom]

# 门窗
setblock ~0 ~1 ~-4 spruce_door[facing=south,half=lower,hinge=left]
setblock ~0 ~2 ~-4 spruce_door[facing=south,half=upper,hinge=left]
setblock ~-3 ~2 ~-4 glass_pane
setblock ~3 ~2 ~-4 glass_pane
setblock ~-5 ~2 ~0 glass_pane
setblock ~4 ~2 ~0 glass_pane

# 室内床位（简化）
setblock ~-3 ~1 ~-1 red_bed[facing=east,part=foot]
setblock ~-2 ~1 ~-1 red_bed[facing=east,part=head]
setblock ~1 ~1 ~-1 red_bed[facing=west,part=foot]
setblock ~0 ~1 ~-1 red_bed[facing=west,part=head]
setblock ~-3 ~1 ~1 blue_bed[facing=east,part=foot]
setblock ~-2 ~1 ~1 blue_bed[facing=east,part=head]
setblock ~1 ~1 ~1 blue_bed[facing=west,part=foot]
setblock ~0 ~1 ~1 blue_bed[facing=west,part=head]

# 训练/补给
setblock ~-4 ~1 ~0 smithing_table
setblock ~3 ~1 ~0 fletching_table
setblock ~-1 ~1 ~2 barrel
setblock ~2 ~1 ~2 chest
setblock ~0 ~1 ~2 anvil

# 灯光
setblock ~-4 ~5 ~-3 lantern[hanging=true]
setblock ~3 ~5 ~-3 lantern[hanging=true]
setblock ~-4 ~5 ~2 lantern[hanging=true]
setblock ~3 ~5 ~2 lantern[hanging=true]

tellraw @s {"text":"[烦人的村民-建筑包] 兵营已生成。","color":"green"}
