#> bem:internal/load/
#
# @internal
#
# @input
#   storage bem:
#     input: {addr: int}
#
# @output
#   storage bem:
#     output: {value: any}

function bem:internal/move/
data remove storage bem: output
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify storage bem: output.value set from block ~ ~ ~ Items[0].tag.""