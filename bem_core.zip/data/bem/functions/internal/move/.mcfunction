#> bem:internal/move/
#
# @internal
#
# @input
#   storage bem:
#     input: {addr: int}

execute store result score #bem: bem-r0 run data get storage bem: input.addr
execute unless score #bem: bem-last_addr = #bem: bem-r0 run function bem:internal/move/1
