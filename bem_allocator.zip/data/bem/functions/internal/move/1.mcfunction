#> bem:internal/move/1
#
# @within bem:internal/move/
#
# @writes
#   score #bem: bem-addr
#   score #bem: bem-last_addr
#   score #bem: bem-r0
#   score #bem: bem-r1

scoreboard players operation #bem: bem-last_addr = #bem: bem-addr

scoreboard players operation #bem: bem-r0 = #bem: bem-addr
scoreboard players operation #bem: bem-r0 %= #bem: bem-4064
execute store result storage bem: pos[1] double 1.0 run scoreboard players remove #bem: bem-r0 2032

scoreboard players operation #bem: bem-r0 = #bem: bem-addr
scoreboard players operation #bem: bem-r0 /= #bem: bem-4064
scoreboard players operation #bem: bem-r1 = #bem: bem-r0

scoreboard players operation #bem: bem-r0 /= #bem: bem-16
execute store result storage bem: pos[0] double 1.0 run scoreboard players add #bem: bem-r0 176

scoreboard players operation #bem: bem-r1 %= #bem: bem-16
execute store result storage bem: pos[2] double 1.0 run scoreboard players add #bem: bem-r1 176

data modify entity fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a Pos set from storage bem: pos
