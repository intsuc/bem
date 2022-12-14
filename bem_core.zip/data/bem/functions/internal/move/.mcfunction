#> bem:internal/move/
#
# @internal
#
# @input
#   storage bem:
#     input: {addr: int}

execute store result score #bem: bem-addr run data get storage bem: input.addr
execute unless score #bem: bem-last_addr = #bem: bem-addr run function bem:internal/move/1
