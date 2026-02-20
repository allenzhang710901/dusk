# 烦人的村民风格哨塔（手动触发）
# 在执行者脚下附近建造：8x8 底座，约14格高

fill ~-4 ~ ~-4 ~3 ~14 ~3 air
fill ~-4 ~ ~-4 ~3 ~ ~3 cobblestone

# 四角立柱
fill ~-4 ~1 ~-4 ~-4 ~10 ~-4 spruce_log
fill ~3 ~1 ~-4 ~3 ~10 ~-4 spruce_log
fill ~-4 ~1 ~3 ~-4 ~10 ~3 spruce_log
fill ~3 ~1 ~3 ~3 ~10 ~3 spruce_log

# 外墙与地板
fill ~-3 ~1 ~-3 ~2 ~1 ~2 spruce_planks
fill ~-3 ~5 ~-3 ~2 ~5 ~2 spruce_planks
fill ~-3 ~9 ~-3 ~2 ~9 ~2 spruce_planks
fill ~-3 ~10 ~-3 ~2 ~10 ~2 spruce_planks

# 屋顶与女儿墙
fill ~-4 ~11 ~-4 ~3 ~11 ~3 dark_oak_slab[type=bottom]
fill ~-4 ~12 ~-4 ~3 ~12 ~3 spruce_fence

# 门与窗
setblock ~0 ~1 ~-4 air
setblock ~0 ~1 ~-4 spruce_door[facing=south,half=lower,hinge=left]
setblock ~0 ~2 ~-4 spruce_door[facing=south,half=upper,hinge=left]
setblock ~-2 ~2 ~-4 glass_pane
setblock ~2 ~2 ~-4 glass_pane
setblock ~-4 ~2 ~-1 glass_pane
setblock ~-4 ~2 ~1 glass_pane
setblock ~3 ~2 ~-1 glass_pane
setblock ~3 ~2 ~1 glass_pane

# 楼梯与平台
setblock ~0 ~1 ~0 ladder[facing=south]
setblock ~0 ~2 ~0 ladder[facing=south]
setblock ~0 ~3 ~0 ladder[facing=south]
setblock ~0 ~4 ~0 ladder[facing=south]
setblock ~0 ~5 ~0 ladder[facing=south]
setblock ~0 ~6 ~0 ladder[facing=south]
setblock ~0 ~7 ~0 ladder[facing=south]
setblock ~0 ~8 ~0 ladder[facing=south]
setblock ~0 ~9 ~0 ladder[facing=south]
setblock ~0 ~10 ~0 ladder[facing=south]

# 防御元素
setblock ~-3 ~12 ~-3 torch
setblock ~2 ~12 ~-3 torch
setblock ~-3 ~12 ~2 torch
setblock ~2 ~12 ~2 torch
setblock ~0 ~11 ~0 bell[attachment=floor]
setblock ~1 ~11 ~1 crafting_table
setblock ~-1 ~11 ~1 barrel

# 周边简易木刺
setblock ~-5 ~ ~-2 oak_fence
setblock ~-5 ~ ~-1 oak_fence
setblock ~-5 ~ ~0 oak_fence
setblock ~-5 ~ ~1 oak_fence
setblock ~4 ~ ~-2 oak_fence
setblock ~4 ~ ~-1 oak_fence
setblock ~4 ~ ~0 oak_fence
setblock ~4 ~ ~1 oak_fence

tellraw @s {"text":"[烦人的村民-建筑包] 哨塔已生成。","color":"green"}
