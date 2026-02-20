# 补给仓库
# 货架+双宝箱+守卫

fill ~-5 ~ ~-4 ~5 ~7 ~4 air
fill ~-5 ~ ~-4 ~5 ~ ~4 stone_bricks
fill ~-5 ~1 ~-4 ~5 ~4 ~-4 spruce_planks
fill ~-5 ~1 ~4 ~5 ~4 ~4 spruce_planks
fill ~-5 ~1 ~-3 ~-5 ~4 ~3 spruce_planks
fill ~5 ~1 ~-3 ~5 ~4 ~3 spruce_planks
fill ~-5 ~5 ~-4 ~5 ~5 ~4 dark_oak_slab[type=bottom]

# 货架
fill ~-3 ~1 ~-2 ~-3 ~3 ~2 spruce_slab[type=bottom]
fill ~3 ~1 ~-2 ~3 ~3 ~2 spruce_slab[type=bottom]

# 宝箱
setblock ~0 ~1 ~-2 chest[facing=south]
setblock ~1 ~1 ~-2 chest[facing=south]
loot insert ~0 ~1 ~-2 loot minecraft:chests/shipwreck_supply
loot insert ~1 ~1 ~-2 loot minecraft:chests/village/village_weaponsmith

# 守军
summon buxin:cun_min_wei_bing ~2 ~1 ~2
summon buxin:green_villager_cavalry ~-2 ~1 ~2
summon buxin:zombie_villager_scout ~0 ~1 ~3

tellraw @s {"text":"[烦人的村民-建筑包] 补给仓库已生成。","color":"green"}
