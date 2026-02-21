# 烦人的村民风格铁匠铺（手动触发）
# 8x8 占地，带熔炉与锻造台

fill ~-4 ~ ~-4 ~3 ~7 ~3 air
fill ~-4 ~ ~-4 ~3 ~ ~3 cobblestone

# 外壳
fill ~-4 ~1 ~-4 ~3 ~4 ~-4 stone_bricks
fill ~-4 ~1 ~3 ~3 ~4 ~3 stone_bricks
fill ~-4 ~1 ~-3 ~-4 ~4 ~2 stone_bricks
fill ~3 ~1 ~-3 ~3 ~4 ~2 stone_bricks
fill ~-4 ~5 ~-4 ~3 ~5 ~3 spruce_slab[type=bottom]

# 门窗
setblock ~0 ~1 ~-4 spruce_door[facing=south,half=lower,hinge=left]
setblock ~0 ~2 ~-4 spruce_door[facing=south,half=upper,hinge=left]
setblock ~-2 ~2 ~-4 glass_pane
setblock ~2 ~2 ~-4 glass_pane

# 匠人设备
setblock ~-2 ~1 ~0 blast_furnace[facing=east]
setblock ~-2 ~1 ~1 furnace[facing=east]
setblock ~-2 ~1 ~2 smoker[facing=east]
setblock ~1 ~1 ~1 anvil
setblock ~1 ~1 ~2 smithing_table
setblock ~0 ~1 ~2 crafting_table
setblock ~2 ~1 ~1 grindstone[facing=west,face=floor]
setblock ~2 ~1 ~2 barrel

# 围栏+灯
setblock ~-4 ~1 ~-1 spruce_fence
setblock ~-4 ~2 ~-1 lantern[hanging=true]
setblock ~3 ~1 ~-1 spruce_fence
setblock ~3 ~2 ~-1 lantern[hanging=true]

tellraw @s {"text":"[烦人的村民-建筑包] 铁匠铺已生成。","color":"green"}
