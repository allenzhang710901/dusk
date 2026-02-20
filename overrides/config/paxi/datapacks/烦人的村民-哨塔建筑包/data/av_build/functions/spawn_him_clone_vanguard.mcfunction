# HIM分身·先锋（中高机动）
# 注意：避免使用 shadow_herobrine（该实体在当前模组版本有目标判空崩溃风险）
summon buxin:dark_herobrine ~ ~1 ~ {CustomName:'{"text":"HIM分身-先锋","color":"dark_purple"}',CustomNameVisible:1b,PersistenceRequired:1b,Health:64f,Attributes:[{Name:"minecraft:generic.max_health",Base:64.0},{Name:"minecraft:generic.attack_damage",Base:12.0},{Name:"minecraft:generic.movement_speed",Base:0.37}],ActiveEffects:[{Id:1,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
tellraw @s {"text":"[烦人的村民-建筑包] HIM分身·先锋已生成（安全实体版本）。","color":"light_purple"}
