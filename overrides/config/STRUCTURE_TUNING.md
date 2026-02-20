# 建筑生成优化说明

本次针对 Ruins 模组做了轻量调优，让新地图更容易遇到野外建筑：

- `tries_per_chunk_normal`: `6 -> 8`
- `chance_to_spawn_normal`: `10 -> 14`
- `tries_per_chunk_nether`: `6 -> 8`
- `chance_to_spawn_nether`: `10 -> 14`
- `anyRuinsMinDistance`: `64 -> 48`

## 如何继续“加入新的建筑”

你可以直接把新的 `.tml` 模板放到：

- `overrides/config/ruins_config/generic/`（通用生物群系）
- 或 `overrides/config/ruins_config/<biome>/`（指定群系）

Ruins 会按 `ruins.txt` 的规则在世界生成时随机选取模板。
