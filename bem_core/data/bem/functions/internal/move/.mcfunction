#> bem:internal/move/
#
# @internal

execute store result score #bem: bem-r0 run data get storage bem: input.addr
execute unless score #bem: bem-last_addr = #bem: bem-r0 run function bem:internal/move/1
