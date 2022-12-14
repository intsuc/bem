#> bem:internal/incr/
#
# @internal

scoreboard players operation #bem: bem-r0 = #bem: bem-addr
scoreboard players operation #bem: bem-r0 %= #bem: bem-4064
execute if score #bem: bem-r0 matches ..4062 at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run teleport fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a ~ ~1.0 ~
execute if score #bem: bem-r0 matches 4063.. at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run teleport fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a ~ -2032.0 ~1.0

scoreboard players operation #bem: bem-r0 = #bem: bem-addr
scoreboard players operation #bem: bem-r0 %= #bem: bem-65024
execute if score #bem: bem-r0 matches 65023.. at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run teleport fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a ~1.0 -2032.0 176.0

scoreboard players add #bem: bem-last_addr 1
scoreboard players add #bem: bem-addr 1
