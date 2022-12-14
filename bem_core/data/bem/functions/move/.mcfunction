#> bem:move/
#
# @internal

scoreboard players operation #bem:1 bem-local = #bem:0 bem-local
scoreboard players operation #bem:1 bem-local %= #bem:0 bem-4064
execute store result storage bem: pos[1] double 1.0 run scoreboard players remove #bem:1 bem-local 2032

scoreboard players operation #bem:0 bem-local /= #bem:0 bem-4064
scoreboard players operation #bem:1 bem-local = #bem:0 bem-local

scoreboard players operation #bem:0 bem-local /= #bem:0 bem-16
execute store result storage bem: pos[0] double 1.0 run scoreboard players add #bem:0 bem-local 176

scoreboard players operation #bem:1 bem-local %= #bem:0 bem-16
execute store result storage bem: pos[2] double 1.0 run scoreboard players add #bem:1 bem-local 176

data modify entity fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a Pos set from storage bem: pos
