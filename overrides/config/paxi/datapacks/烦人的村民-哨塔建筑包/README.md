# 烦人的村民-哨塔建筑包

## 本次补全内容（支持 /place structure + 模组名）
现在支持直接使用结构命令：

- `/place structure buxin:villager_scout_outpost`（仅放置结构）

并补了一个便捷命令（放置后顺带刷守军）：

- `/function av_build:place_villager_scout_outpost`

守军包含：
- `buxin:villager_scout`
- `buxin:green_villager_cavalry`
- `buxin:red_villager`

## 其他可用命令
- 哨塔：`/function av_build:spawn_watchtower`
- 兵营：`/function av_build:spawn_barracks`
- 铁匠铺：`/function av_build:spawn_blacksmith`
- 一键组合：`/function av_build:spawn_outpost_set`

## 自然生成
已添加 `worldgen/structure`、`structure_set` 与 biome tag：
- `buxin:villager_scout_outpost` 会在平原/草甸/稀树草原类群系参与世界生成（新建区块生效）。

## 目录
- `data/buxin/worldgen/structure/villager_scout_outpost.json`
- `data/buxin/worldgen/structure_set/villager_scout_outpost.json`
- `data/buxin/tags/worldgen/biome/has_structure/villager_scout_outpost.json`
- `data/av_build/functions/place_villager_scout_outpost.mcfunction`
