#> bem:deallocate
#
# @api
#
# @input
#   storage bem:
#     input: {addr: int}

function bem:internal/move/
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify storage bem: node set from block ~ ~ ~ Items[0].tag

execute store result storage bem: node.n int 1.0 run scoreboard players get #bem: bem-head

execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run item modify block ~ ~ ~ container.0 bem:set_node

execute store result score #bem: bem-head run data get storage bem: input.addr
