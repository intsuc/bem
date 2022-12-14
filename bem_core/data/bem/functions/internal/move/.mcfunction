#> bem:internal/move/
#
# @internal

execute store result score #bem:0 bem run data get storage bem: input.addr
execute unless score #bem:0 bem-last_addr = #bem:0 bem run function bem:internal/move/1
