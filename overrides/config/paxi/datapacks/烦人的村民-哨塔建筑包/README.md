# 烦人的村民-哨塔建筑包

## 本次新增（额外5个烦村建筑）
在原有哨塔/兵营/铁匠铺基础上，新增 5 个可生成建筑，并且都包含宝箱与对应驻守实体。
其中“玩家聚集地”已改为玩家阵营实体（Steve/Alex/PVP角色），不再生成村民侦察兵：

1. 玩家聚集地：`/function av_build:spawn_player_settlement`
2. 训练场：`/function av_build:spawn_training_camp`
3. 补给仓库：`/function av_build:spawn_supply_depot`
4. 医疗帐篷：`/function av_build:spawn_medical_tent`
5. 指挥中心：`/function av_build:spawn_command_center`

一键生成这 5 个：
- `/function av_build:spawn_large_settlement_set`

## /place structure 支持
- `/place structure buxin:villager_scout_outpost`（仅放结构）
- `/function av_build:place_villager_scout_outpost`（放结构+刷守军）

## 自然生成
- `buxin:villager_scout_outpost` 已注册到 worldgen（新区域可生成）。

## 说明
尝试在线检索“烦人的村民建筑清单”时，当前环境搜索页面无法稳定返回内容；
因此这版按烦村常见据点要素（聚集地/训练/补给/医疗/指挥）进行功能化补全。

## 新增玩家角色
- 命令：`/function av_build:spawn_player_allenzhang710901`
- 作用：生成玩家阵营角色 `allenzhang710901`（基于 `angry_steve`，强度略高一档、可见名字、常驻不消失）。


## 新增生物扩展
- 动物联合协会巡逻队：`/function av_build:spawn_animal_union_patrol`
  - 包含：狼、狐狸、山羊、战马，以及 `player_mobs:player_mob` 协会成员。

## 新增 HIM 分身版本（沿用原实体AI，已规避 shadow_herobrine 崩溃点）
- ` /function av_build:spawn_him_clone_vanguard `（先锋，机动型）
- ` /function av_build:spawn_him_clone_bulwark `（壁垒，坦克型）
- ` /function av_build:spawn_him_clone_ravager `（掠袭，爆发型）
- ` /function av_build:spawn_him_clone_squad `（一键生成三种分身）

> 说明：AI 行为沿用 `buxin` 模组原有 Herobrine 实体逻辑，本次在 datapack 层做了定位与数值强化区分。


## allenzhang710901 强化AI（新增）
- 残血（<=24）会后撤逃跑并自疗。
- 残血时会在周围临时搭建方块掩体。
- 战斗中按距离动态换武器，并持续轮换整合包武器池（含多把 `buxin` 武器 + 远程武器）：
  - 近战优先：`buxin:dark_herobrine_weapon`
  - 中距优先：弩
  - 远程优先：三叉戟
  - 轮换池示例：`dark_herobrine_weapon` / `blood_greatsword` / `dark_legendary_sword` / `alloygiantsword` / `diamond_tachi_sword` / `diamond_long_axe` / `hui_mie_zhi_jian` / `fire_snake_sword`
- 基础血量升级到 80，并配置全套下界合金护甲、图腾。

相关函数：
- `av_build:tick`（每tick驱动）
- `av_build:allen_ai_tick`
- `av_build:allen_ai_flee`
- `av_build:spawn_player_allenzhang710901`


## 崩溃规避（重要）
- 当前 `buxin-3.4.6` 中 `shadow_herobrine` 存在目标判空崩溃风险。
- 已将 `HIM分身·先锋` 改为基于 `dark_herobrine` 的安全版。
- 若旧存档里已有该实体，可执行：`/function av_build:cleanup_shadow_herobrine` 清理。
